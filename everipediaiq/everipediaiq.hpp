/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#pragma once

#include <eosio/asset.hpp>
#include <eosio/eosio.hpp>
#include <eosio/system.hpp>

#include <string>

using namespace eosio;
using std::string;

const uint64_t EDIT_PROPOSE_IQ = 50; // 50 IQ
const name PROXY_CONTRACT = name("epiqrelayhot");
const name ARTICLE_CONTRACT = name("eparticlectr");
const name PROXIABLE_ACCOUNTS[4] = { PROXY_CONTRACT, ARTICLE_CONTRACT, name("everipediaiq"), name("evrpdcronjob") };
const uint64_t PROXY_LIST_SIZE = 4;

class [[eosio::contract("everipediaiq")]] everipediaiq : public contract {
  using contract::contract;

  public:
    using ipfshash_t = std::string;

    static bool is_proxiable(const name& check)
    {
        for(size_t n = 0; n < PROXY_LIST_SIZE; ++n)
        {
            if(PROXIABLE_ACCOUNTS[n] == check)
                return true;
        }

        return false;
    }


    [[eosio::action]]
    void burn( name from,
                   asset        quantity,
                   string       memo );

    [[eosio::action]]
    void create( name issuer,
                  asset        maximum_supply);

    [[eosio::action]]
    void setmaxsupply( asset maximum_supply);

    [[eosio::action]]
    void issue( name to, asset quantity, string memo );

    [[eosio::action]]
    void open( const name& owner, const symbol& symbol, const name& ram_payer );

    [[eosio::action]]
    void close( const name& owner, const symbol& symbol );

    [[eosio::action]]
    void issueextra( 
      name to, 
      asset quantity, 
      string memo,
      string proxied_for,
      string extra_note
    );

    [[eosio::action]]
    void transfer( name from,
                    name to,
                    asset        quantity,
                    string       memo );

    [[eosio::action]]
    void transfrextra( 
                      name from,
                      name to,
                      asset quantity,
                      string memo, 
                      string proxied_for,
                      string purpose,
                      string extra_note
                    );

    [[eosio::action]]
    void epartvotex( name voter, 
                     uint64_t proposal_id,
                     bool approve,
                     uint64_t amount,
                     string comment, 
                     string memo,
                     name permission,
                     string proxied_for,
                     string extra_note );

    [[eosio::action]]
    void epartpropsex( name proposer, 
                        string slug,
                        ipfshash_t ipfs_hash,
                        string lang_code,
                        int64_t group_id,
                        string comment,
                        string memo, 
                        name permission,
                        string proxied_for,
                        string extra_note );

    inline asset get_supply( symbol_code sym )const;

    inline asset get_balance( name owner, symbol_code sym )const;

  private:
    const name ARTICLE_CONTRACT = name("eparticlectr");
    const eosio::symbol IQSYMBOL = symbol(symbol_code("IQ"), 3);
    const int64_t IQ_PRECISION_MULTIPLIER = 1000;

    struct [[eosio::table]] account {
        asset    balance;

        uint64_t primary_key()const { return balance.symbol.code().raw(); }
    };

    struct [[eosio::table]] currency_stats {
        asset          supply;
        asset          max_supply;
        name   issuer;

        uint64_t primary_key()const { return supply.symbol.code().raw(); }
    };

    typedef eosio::multi_index<name("accounts"), account> accounts;
    typedef eosio::multi_index<name("stat"), currency_stats> stats;

    void sub_balance( name owner, asset value );
    void add_balance( name owner, asset value, name ram_payer );
    void transfer_core_code( name from, name to, asset quantity, std::string memo );
    void transfrextra_core_code( name from, name to, asset quantity, string memo, string proxied_for, string purpose, string extra_note );
    void issue_core_code( name to, asset quantity, std::string memo );
};

asset everipediaiq::get_supply( symbol_code sym )const
{
  stats statstable( _self, sym.raw() );
  const auto& st = statstable.get( sym.raw() );
  return st.supply;
}

asset everipediaiq::get_balance( name owner, symbol_code sym )const
{
  accounts accountstable( _self, owner.value );
  const auto& ac = accountstable.get( sym.raw() );
  return ac.balance;
}
