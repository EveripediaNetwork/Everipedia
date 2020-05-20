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

const uint64_t LOCKUP_TOTAL = 10000000;
const name CUSTODIAN_ACCOUNT = name("123abcabc321");
const name EP_ACCOUNT = name("ytehekdmilty");
const name EP_ACCOUNT = name("ytehekdmilty");
const uint64_t TRANCHE_PERIOD = 2592000; // 1 month
const uint64_t TOTAL_TRANCHES = 24; // 2 years

class [[eosio::contract("iqlockupctcr")]] iqlockupctcr : public contract {
  using contract::contract;

  public:
    using ipfshash_t = std::string;


    [[eosio::action]]
    void burn( name from,
                   asset        quantity,
                   string       memo );

    [[eosio::action]]
    void create( name issuer,
                  asset        maximum_supply);


  private:
    const eosio::symbol IQSYMBOL = symbol(symbol_code("IQ"), 3);
    const int64_t IQ_PRECISION_MULTIPLIER = 1000;

    struct [[eosio::table]] status {
        asset balance;
        bool deposit_complete = 0; // Initial deposit done? 
        uint32_t deposit_time; // Time of initial deposit
        uint32_t num_tranches_collected; // 1 to TOTAL_TRANCHES
        uint32_t last_tranche_collection_time; // Timestamp when the last tranche was collected
        uint32_t final_tranche_available_time; // Timestamp when the last tranche can be collected

        uint64_t primary_key()const { return balance.symbol.code().raw(); }
    };

    typedef eosio::multi_index<name("status"), status> statustbl;
};
