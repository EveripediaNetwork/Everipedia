
#include "everipediaiq.hpp"
#include "../eparticlectr/eparticlectr.hpp"

[[eosio::action]]
void everipediaiq::create( name issuer,
                    asset        maximum_supply )
{
    require_auth( _self );

    auto sym = maximum_supply.symbol;
    eosio::check( sym.is_valid(), "invalid symbol name" );
    eosio::check( maximum_supply.is_valid(), "invalid supply");
    eosio::check( maximum_supply.amount > 0, "max-supply must be positive");

    stats statstable( _self, sym.code().raw() );
    auto existing = statstable.find( sym.code().raw() );
    eosio::check( existing == statstable.end(), "token with symbol already exists" );

    statstable.emplace( _self, [&]( auto& s ) {
       s.supply.symbol = maximum_supply.symbol;
       s.max_supply    = maximum_supply;
       s.issuer        = issuer;
    });
}

[[eosio::action]]
void everipediaiq::setmaxsupply(asset maximum_supply )
{
  require_auth( _self );

  auto sym = maximum_supply.symbol;
  eosio::check( sym.is_valid(), "invalid symbol name" );
  eosio::check( maximum_supply.is_valid(), "invalid supply");
  eosio::check( maximum_supply.amount > 0, "max-supply must be positive");

  stats statstable( _self, sym.code().raw() );
  auto existing = statstable.find( sym.code().raw() );
  eosio::check( existing != statstable.end(), "token with symbol does not exist, create token before issue" );
  const auto& st = *existing;

  statstable.modify( st, same_payer, [&]( auto& s ) {
    s.max_supply = maximum_supply;
  });
}

void everipediaiq::issue_core_code( name to, asset quantity, std::string memo ) {
    auto sym = quantity.symbol;
    eosio::check( sym.is_valid(), "invalid symbol name" );
    eosio::check( memo.size() <= 256, "memo has more than 256 bytes" );

    auto sym_name = sym.code().raw();
    stats statstable( _self, sym_name );
    auto existing = statstable.find( sym_name );
    eosio::check( existing != statstable.end(), "token with symbol does not exist, create token before issue" );
    const auto& st = *existing;

    require_auth( st.issuer );
    eosio::check( quantity.is_valid(), "invalid quantity" );
    eosio::check( quantity.amount > 0, "must issue positive quantity" );

    eosio::check( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );
    eosio::check( quantity.amount <= st.max_supply.amount - st.supply.amount, "quantity exceeds available supply");

    statstable.modify( st, same_payer, [&]( auto& s ) {
       s.supply += quantity;
    });

    add_balance( st.issuer, quantity, st.issuer );

    if( to != st.issuer ) {
        transfer_core_code(st.issuer, to, quantity, memo);
    }
}

[[eosio::action]]
void everipediaiq::issue( name to, asset quantity, std::string memo )
{
    // Issue the IQ normally
    issue_core_code(to, quantity, memo);
}

[[eosio::action]]
void everipediaiq::open( const name& owner, const symbol& symbol, const name& ram_payer )
{
    require_auth( ram_payer );

    check( is_account( owner ), "owner account does not exist" );

    auto sym_code_raw = symbol.code().raw();
    stats statstable( get_self(), sym_code_raw );
    const auto& st = statstable.get( sym_code_raw, "symbol does not exist" );
    check( st.supply.symbol == symbol, "symbol precision mismatch" );

    accounts acnts( get_self(), owner.value );
    auto it = acnts.find( sym_code_raw );
    if( it == acnts.end() ) {
        acnts.emplace( ram_payer, [&]( auto& a ){
        a.balance = asset{0, symbol};
        });
    }
}

[[eosio::action]]
void everipediaiq::close( const name& owner, const symbol& symbol )
{
    require_auth( owner );
    accounts acnts( get_self(), owner.value );
    auto it = acnts.find( symbol.code().raw() );
    check( it != acnts.end(), "Balance row already deleted or never existed. Action won't have any effect." );
    check( it->balance.amount == 0, "Cannot close because the balance is not zero." );
    acnts.erase( it );
}

[[eosio::action]]
void everipediaiq::issueextra( 
    name to, 
    asset quantity, 
    std::string memo,
    std::string proxied_for,
    std::string extra_note
)
{
    eosio::check( proxied_for.size() <= 256, "proxied_for has more than 256 bytes" );
    eosio::check( extra_note.size() <= 256, "extra_note has more than 256 bytes" );

    // Issue the IQ normally
    issue_core_code(to, quantity, memo);
}

void everipediaiq::transfer_core_code( name from, name to, asset quantity, std::string memo ) {
    eosio::check( is_account( to ), "to account does not exist");
    auto sym = quantity.symbol.code();
    stats statstable( _self, sym.raw() );
    const auto& st = statstable.get( sym.raw() );

    eosio::check( quantity.is_valid(), "invalid quantity" );
    eosio::check( quantity.amount > 0, "must transfer positive quantity" );
    eosio::check( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );
    eosio::check( memo.size() <= 256, "memo has more than 256 bytes" );

    if ((to == PROXY_CONTRACT) && (from == PROXY_CONTRACT)){
        // do nothing, but it will be recorded on chain
    }
    else {
        eosio::check( from != to , "cannot transfer to self" );
        sub_balance( from, quantity );
        add_balance( to, quantity, from );
    }
}

void everipediaiq::transfrextra_core_code( 
                      name from,
                      name to,
                      asset quantity,
                      std::string memo, 
                      std::string proxied_for,
                      std::string purpose,
                      std::string extra_note
) {
    eosio::check( proxied_for.size() <= 256, "proxied_for has more than 256 bytes" );
    eosio::check( purpose.size() <= 256, "purpose has more than 256 bytes" );
    eosio::check( extra_note.size() <= 256, "extra_note has more than 256 bytes" );

    // Reject transactions where non-proxy accounts try to specify a proxied_for
    bool can_proxy = everipediaiq::is_proxiable(from);
    eosio::check( can_proxy || (!can_proxy && proxied_for == ""), "proxied_for must be empty for non-proxy accounts" );

    // Transfer the IQ normally
    transfer_core_code(from, to, quantity, memo);
}

[[eosio::action]]
void everipediaiq::transfer( name from,
                      name to,
                      asset        quantity,
                      std::string       memo )
{
    require_auth( from );
    require_recipient( from );
    require_recipient( to );

    // Transfer the IQ normally
    transfer_core_code(from, to, quantity, memo);

}

[[eosio::action]]
void everipediaiq::transfrextra( 
                      name from,
                      name to,
                      asset quantity,
                      std::string memo, 
                      std::string proxied_for,
                      std::string purpose,
                      std::string extra_note
                      )
{
    require_auth(from);
    require_recipient(from);
    require_recipient(to);

    // Transfer the IQ normally
    transfrextra_core_code(from, to, quantity, memo, proxied_for, purpose, extra_note);
}

[[eosio::action]]
void everipediaiq::burn( name from, asset quantity, std::string memo )
{
     require_auth( from );
     auto sym = quantity.symbol;
     eosio::check( sym.is_valid(), "invalid symbol name" );
     eosio::check( memo.size() <= 256, "memo has more than 256 bytes" );

     auto sym_name = sym.code().raw();
     stats statstable( _self, sym_name );
     auto existing = statstable.find( sym_name );
     eosio::check( existing != statstable.end(), "token with symbol does not exist" );
     const auto& st = *existing;

     eosio::check( quantity.is_valid(), "invalid quantity" );
     eosio::check( quantity.amount > 0, "must burn positive quantity" );
     eosio::check( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );

     statstable.modify( st, same_payer, [&]( auto& s ) {
        s.supply -= quantity;
     });

     sub_balance( from, quantity );
}

void everipediaiq::sub_balance( name owner, asset value ) {
   accounts from_acnts( _self, owner.value );

   const auto& from = from_acnts.get( value.symbol.code().raw(), "no balance object found" );
   eosio::check( from.balance.amount >= value.amount, "overdrawn balance" );


   if( from.balance.amount == value.amount ) {
      from_acnts.erase( from );
   } else {
      from_acnts.modify( from, owner, [&]( auto& a ) {
          a.balance -= value;
      });
   }
}

void everipediaiq::add_balance( name owner, asset value, name ram_payer )
{
   accounts to_acnts( _self, owner.value );
   auto to = to_acnts.find( value.symbol.code().raw() );
   if( to == to_acnts.end() ) {
      to_acnts.emplace( ram_payer, [&]( auto& a ){
        a.balance = value;
      });
   } else {
      to_acnts.modify( to, same_payer, [&]( auto& a ) {
        a.balance += value;
      });
   }
}

[[eosio::action]]
void everipediaiq::epartpropose( name proposer, std::string slug, ipfshash_t ipfs_hash, std::string lang_code, int64_t group_id, std::string comment, std::string memo, name permission) { 
    // Deprecated
    eosio::check(false, "epartpropose is deprecated. Use epartpropsex instead");
    return;
}

[[eosio::action]]
void everipediaiq::epartpropsex( 
    name proposer, 
    std::string slug, 
    ipfshash_t ipfs_hash, 
    std::string lang_code, 
    int64_t group_id, 
    std::string comment, 
    std::string memo, 
    name permission,
    std::string proxied_for,
    std::string extra_note
) { 
    require_auth(proposer);
    
    eosio::check( proxied_for.size() <= 256, "proxied_for has more than 256 bytes" );
    eosio::check( extra_note.size() <= 256, "extra_note has more than 256 bytes" );

    // Reject transactions where non-proxy accounts try to specify a proxied_for
    bool can_proxy = everipediaiq::is_proxiable(proposer);
    eosio::check( can_proxy || (!can_proxy && proxied_for == ""), "proxied_for must be empty for non-proxy accounts" );

    // Transfer the IQ to the eparticlectr contract for staking
    asset iqAssetPack = asset(EDIT_PROPOSE_IQ * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    transfrextra_core_code(proposer, ARTICLE_CONTRACT, iqAssetPack, std::string("stake for vote"), proxied_for, ipfs_hash +  std::string("|lang_") + lang_code + std::string("/") + slug, extra_note);

    // Make the proposal to the article contract
    action(
        permission_level{ ARTICLE_CONTRACT, name("active") }, 
        ARTICLE_CONTRACT, name("proposeextra"),
        std::make_tuple( proposer, slug, ipfs_hash, lang_code, group_id, comment, memo, proxied_for, extra_note )
    ).send();
}

[[eosio::action]]
void everipediaiq::epartvote( name voter, uint64_t proposal_id, bool approve, uint64_t amount, std::string comment, std::string memo, name permission) {
    // Deprecated
    eosio::check(false, "epartvote is deprecated. Use epartvotex instead");
    return;
}

[[eosio::action]]
void everipediaiq::epartvotex( 
    name voter, 
    uint64_t proposal_id, 
    bool approve, 
    uint64_t amount, 
    std::string comment, 
    std::string memo, 
    name permission,
    std::string proxied_for,
    std::string extra_note
) {
    require_auth(voter);

    eosio::check(amount > 0, "must transfer a positive amount");
    eosio::check( proxied_for.size() <= 256, "proxied_for has more than 256 bytes" );
    eosio::check( extra_note.size() <= 256, "extra_note has more than 256 bytes" );

    // Reject transactions where non-proxy accounts try to specify a proxied_for
    bool can_proxy = everipediaiq::is_proxiable(voter);
    eosio::check( can_proxy || (!can_proxy && proxied_for == ""), "proxied_for must be empty for non-proxy accounts" );

    // Transfer the IQ to the eparticlectr contract for staking
    asset iqAssetPack = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    transfrextra_core_code(voter, ARTICLE_CONTRACT, iqAssetPack, std::string("stake for vote"), proxied_for, std::string("PROPOSAL: ") + std::to_string(proposal_id), extra_note);

    // Create the vote in the eparticlectr contract
    action(
        permission_level{ ARTICLE_CONTRACT, name("active") }, 
        ARTICLE_CONTRACT, name("voteextra"),
        std::make_tuple( voter, proposal_id, approve, amount, comment, memo, proxied_for, extra_note )
    ).send();
}


EOSIO_DISPATCH( everipediaiq, (burn)(create)(issue)(issueextra)(transfer)(open)(close)(transfrextra)(epartpropose)(epartpropsex)(epartvote)(epartvotex)(setmaxsupply) )
