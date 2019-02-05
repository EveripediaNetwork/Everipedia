/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#pragma once

#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>

#include <string>

using namespace eosio;
using std::string;

const uint64_t EDIT_PROPOSE_IQ = 50; // 50 IQ

class everipediaiq : public contract {
  using contract::contract;

  private:
    using ipfshash_t = std::string;

  public:

     [[eosio::action]]
     void burn( name from,
                   asset        quantity,
                   string       memo );

     [[eosio::action]]
     void create( name issuer,
                  asset        maximum_supply);

     [[eosio::action]]
     void issue( name to, asset quantity, string memo );

     [[eosio::action]]
     void transfer( name from,
                    name to,
                    asset        quantity,
                    string       memo );

     [[eosio::action]]
     void epartvote( name voter, 
                     uint64_t proposal_id,
                     bool approve,
                     uint64_t amount,
                     std::string comment, 
                     std::string memo );

     [[eosio::action]]
     void epartpropose( name proposer, 
                        int64_t wiki_id,
                        std::string title,
                        ipfshash_t ipfs_hash,
                        std::string lang_code,
                        int64_t group_id,
                        std::string comment,
                        std::string memo );

     inline asset get_supply( symbol_code sym )const;

     inline asset get_balance( name owner, symbol_code sym )const;

  private:
     const name ARTICLE_CONTRACT = name("eparticlenew");
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
