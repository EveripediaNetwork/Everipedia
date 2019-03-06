#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>
#include <eosiolib/types.h>
#include <eosiolib/crypto.h>
#include <eosiolib/asset.hpp>

using namespace eosio;
using namespace std;

class [[eosio::contract]] iqutxo : public eosio::contract {

public:
    using contract::contract;

    [[eosio::action]]
    void create(name issuer, asset maximum_supply);

    [[eosio::action]]
    void issue(public_key to, asset quantity, const string memo);

    [[eosio::action]]
    void transfer(
                public_key relayer,
                public_key from,
                public_key to,
                asset amount,
                asset fee,
                uint64_t nonce,
                string memo,
                signature sig);

    struct [[eosio::table]] account {
      uint64_t key;
      public_key publickey;
      asset balance;
      uint64_t last_nonce;

      uint64_t primary_key() const { return key; }
      fixed_bytes<32> bypk() const {
        return public_key_to_fixed_bytes(publickey);
      };
    };

    struct [[eosio::table]] currstats {
        asset supply;
        asset max_supply;
        name issuer;

        uint64_t primary_key() const { return supply.symbol.raw(); }
    };

    typedef eosio::multi_index<"accounts"_n,
                               account,
                               indexed_by<"bypk"_n, const_mem_fun<account, fixed_bytes<32>, &account::bypk>>
                              > accounts;

    typedef eosio::multi_index<"stats"_n, currstats> stats;

  private:

    static fixed_bytes<32> public_key_to_fixed_bytes(const public_key publickey) {
        return sha256(publickey.data.begin(), 33);
    }

    void sub_balance(public_key sender, asset value);

    void add_balance(public_key recipient, asset value);

};
