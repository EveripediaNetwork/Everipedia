#include "iqutxo.hpp"
#include "base58.c"

std::string bytetohex(unsigned char *data, int len) {
    constexpr char hexmap[] = {'0', '1', '2', '3', '4', '5', '6', '7',
                               '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    std::string s(len * 2, ' ');
    for (int i = 0; i < len; ++i) {
        s[2 * i]     = hexmap[(data[i] & 0xF0) >> 4];
        s[2 * i + 1] = hexmap[data[i] & 0x0F];
    }
    return s;
}


[[eosio::action]]
void iqutxo::create(name issuer, asset maximum_supply) {
    require_auth( _self );
  
    auto symbol = maximum_supply.symbol;
    eosio_assert(symbol.is_valid(), "invalid symbol name");
    eosio_assert(maximum_supply.is_valid(), "invalid supply");
    eosio_assert(maximum_supply.amount > 0, "max-supply must be positive");
  
    stats statstable(_self, symbol.raw());
    auto existing = statstable.find(symbol.raw());
    eosio_assert(existing == statstable.end(), "token with symbol already exists");
  
    statstable.emplace(_self, [&](auto& s) {
        s.supply.symbol = maximum_supply.symbol;
        s.max_supply    = maximum_supply;
        s.issuer        = issuer;
    });
}

void iqutxo::issue(name from, name to, asset quantity, string memo) {
    if (from == _self) return; // sending IQ, ignore

    auto symbol = quantity.symbol;
    eosio_assert(symbol.is_valid(), "invalid symbol name");
    eosio_assert(memo.size() == 53, "memo must be a 53-char EOS public key");
    eosio_assert(memo.substr(0,3) == "EOS", "public key must start with EOS");
    eosio_assert(to == _self, "stop trying to hack the contract");
    eosio_assert(quantity.symbol == IQ_SYMBOL, "this contract only accepts IQ");

    stats statstable(_self, IQUTXO_SYMBOL.raw());
    auto existing = statstable.find(IQUTXO_SYMBOL.raw());
    eosio_assert(existing != statstable.end(), "IQUTXO token does not exist, create token before issue");
    const auto& st = *existing;

    eosio_assert(quantity.is_valid(), "invalid quantity");
    eosio_assert(quantity.amount > 0, "must issue positive quantity");

    eosio_assert(quantity.symbol.precision() == st.supply.symbol.precision(), "symbol precision mismatch");
    eosio_assert(quantity.amount <= st.max_supply.amount - st.supply.amount, "quantity exceeds available supply");

    // copy IQ quantity to IQUTXO
    auto utxo_quantity = quantity;
    utxo_quantity.symbol = IQUTXO_SYMBOL;

    // TODO: ensure IQ balance is enough to cover UTXO issuance
    // This will always be true unless the contract has been hacked
    // so it is mostly a sanity check

    statstable.modify(st, _self, [&](auto& s) {
       s.supply += utxo_quantity;
    });

    // convert public key memo to public_key object
    public_key issue_to;
    size_t issue_to_len = 37;
    b58tobin((void *)issue_to.data.data(), &issue_to_len, memo.substr(3).c_str());

    // validate the checksum
    public_key issue_to_copy = issue_to;
    checksum160 checksum = ripemd160((const char *)issue_to_copy.data.begin(), 33);
    std::array<uint8_t,20> checksum_bytes = checksum.extract_as_byte_array();
    for (int i=0; i<4; i++)
        eosio_assert(checksum_bytes[i] == (uint8_t)issue_to.data[33+i], "invalid public key in memo: checksum does not validate");

    add_balance(issue_to, utxo_quantity);
}

[[eosio::action]]
void iqutxo::transfer(
            public_key relayer,
            public_key from,
            public_key to,
            asset amount,
            asset fee,
            uint64_t nonce,
            string memo,
            signature sig) {

    // get currency information
    auto sym = amount.symbol.raw();
    stats statstable(_self, sym);
    const auto& st = statstable.get(sym);

    // get last nonce
    accounts accounts_table(_self, _self.value);
    auto pk_index = accounts_table.get_index<name("bypk")>();
    auto account_it = pk_index.find(public_key_to_fixed_bytes(from));
    uint64_t last_nonce = 0;
    if (account_it != pk_index.end())
        last_nonce = account_it->last_nonce;
    
    // validate inputs
    eosio_assert(from != to, "cannot transfer to self");
    eosio_assert(amount.is_valid(), "invalid quantity" );
    eosio_assert(fee.is_valid(), "invalid quantity" );
    eosio_assert(amount.amount > 0, "must transfer positive quantity");
    eosio_assert(fee.amount >= 0, "fee must be non-negative");
    eosio_assert(amount.symbol == st.supply.symbol, "symbol precision mismatch");
    eosio_assert(fee.symbol == st.supply.symbol, "symbol precision mismatch");
    eosio_assert(memo.size() <= 163, "memo has more than 164 bytes");
    eosio_assert(nonce > last_nonce, "Nonce must be greater than last nonce. This transaction may already have been relayed.");
    eosio_assert(nonce < last_nonce + 100, "Nonce cannot jump by more than 100");
    
    // tx meta fields
    uint8_t version = 0x01;
    uint8_t length = 92 + memo.size();
    
    // construct raw transaction
    uint8_t rawtx[length];
    rawtx[0] = version;
    rawtx[1] = length;
    memcpy(rawtx + 2, from.data.data(), 33);
    memcpy(rawtx + 35, to.data.data(), 33);
    memcpy(rawtx + 68, (uint8_t *)&amount.amount, 8);
    memcpy(rawtx + 76, (uint8_t *)&fee.amount, 8);
    memcpy(rawtx + 84, (uint8_t *)&nonce, 8);
    memcpy(rawtx + 92, memo.c_str(), memo.size());
    
    // hash transaction
    checksum256 digest = sha256((const char *)rawtx, length);
    
    // verify signature
    assert_recover_key(digest, sig, from);
    
    // update balances with main amount
    sub_balance(from, amount);
    add_balance(to, amount);
  
    // update balances with fees
    if (fee.amount > 0) {
        sub_balance(from, fee);
        add_balance(relayer, fee);
    }
    
    // update last nonce
    account_it = pk_index.find(public_key_to_fixed_bytes(from));
    pk_index.modify(account_it, _self, [&]( auto& n ){
        n.last_nonce = nonce;
    });
  
}

void iqutxo::sub_balance(public_key sender, asset value) {
    accounts from_acts(_self, _self.value);
  
    auto accounts_index = from_acts.get_index<name("bypk")>();
    const auto& from = accounts_index.get(public_key_to_fixed_bytes(sender), "no public key object found");
    eosio_assert(from.balance.amount >= value.amount, "overdrawn balance");
  
    if (from.balance.amount == value.amount) {
        from_acts.erase(from);
    } else {
        from_acts.modify(from, _self, [&]( auto& a ) {
            a.balance -= value;
        });
    }
}

void iqutxo::add_balance(public_key recipient, asset value) {
    accounts to_acts(_self, _self.value);
  
    auto accounts_index = to_acts.get_index<name("bypk")>();
    auto to = accounts_index.find(public_key_to_fixed_bytes(recipient));
  
    if (to == accounts_index.end()) {
        to_acts.emplace(_self, [&]( auto& a ){
            a.key = to_acts.available_primary_key();
            a.balance = value;
            a.publickey = recipient;
            a.last_nonce = 0;
        });
    } else {
        accounts_index.modify(to, _self, [&]( auto& a ) {
            a.balance += value;
        });
    }
}

extern "C" void apply(uint64_t receiver, uint64_t code, uint64_t action)
{
    auto _self = receiver;
    if (code == name("everipediaiq").value && action == name("transfer").value)
    {
        eosio::execute_action(
            eosio::name(receiver), eosio::name(code), &iqutxo::issue
        );
    }
    else if (code == _self && action == name("create").value)
    {
        eosio::execute_action(
            eosio::name(receiver), eosio::name(code), &iqutxo::create
        );
    }
    else if (code == _self && action == name("transfer").value)
    {
        eosio::execute_action(
            eosio::name(receiver), eosio::name(code), &iqutxo::transfer
        );
    }
}
