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

class everipediaiq : public contract {
  public:
     everipediaiq( account_name self ):contract(self){}

     void burn( account_name from,
                   asset        quantity,
                   string       memo );

     void create( account_name issuer,
                  asset        maximum_supply);

     void issue( account_name to, asset quantity, string memo );

     void transfer( account_name from,
                    account_name to,
                    asset        quantity,
                    string       memo );

     void paytxfee( account_name from,
                   asset        quantity,
                   string       memo );

     void brainmeiq( account_name staker,
                   int64_t amount );


     inline asset get_supply( symbol_name sym )const;

     inline asset get_balance( account_name owner, symbol_name sym )const;

  private:
     const account_name TOKEN_CONTRACT_ACCTNAME = N(everipediaiq);
     const account_name ARTICLE_CONTRACT_ACCTNAME = N(eparticlectr);
     const account_name FEE_CONTRACT_ACCTNAME = N(epiqtokenfee);
     const account_name GOVERNANCE_CONTRACT_ACCTNAME = N(epgovernance);
     const double TRANSFER_FEE = 0.001;
     symbol_type IQSYMBOL = eosio::symbol_type(eosio::string_to_symbol(3, "IQ"));
     const int64_t IQ_PRECISION_MULTIPLIER = 1000;

     struct account {
        asset    balance;

        uint64_t primary_key()const { return balance.symbol.name(); }
     };

     struct currency_stats {
        asset          supply;
        asset          max_supply;
        account_name   issuer;

        uint64_t primary_key()const { return supply.symbol.name(); }
     };

     typedef eosio::multi_index<N(accounts), account> accounts;
     typedef eosio::multi_index<N(stat), currency_stats> stats;

     void sub_balance( account_name owner, asset value );
     void add_balance( account_name owner, asset value, account_name ram_payer );

  public:
     struct transfer_args {
        account_name  from;
        account_name  to;
        asset         quantity;
        string        memo;
     };
};

asset everipediaiq::get_supply( symbol_name sym )const
{
  stats statstable( _self, sym );
  const auto& st = statstable.get( sym );
  return st.supply;
}

asset everipediaiq::get_balance( account_name owner, symbol_name sym )const
{
  accounts accountstable( _self, owner );
  const auto& ac = accountstable.get( sym );
  return ac.balance;
}
