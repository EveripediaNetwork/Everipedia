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

const asset LOCKUP_TOTAL = asset(157498335497 * IQ_PRECISION_MULTIPLIER, IQSYMBOL); // Be careful with precision here
const name LOCKUP_CONTRACT = name("iqlockupctcr");
const name CUSTODIAN_ACCOUNT = name("123abcabc321");
const name EP_ACCOUNT = name("ytehekdmilty");
const uint32_t START_DATE = 1588550400; // Monday, May 4, 2020 12:00:00 AM GMT
const uint32_t END_DATE = 1659571200; // Thursday, August 4, 2022 12:00:00 AM GMT
const uint64_t CLIFF_DELAY = 15897600; // 184 days, in seconds
const uint64_t TRANCHE_PERIOD = 7776000; // 3 months (assuming a 30 day month for simplicity)
const uint64_t TOTAL_TRANCHES = 8; // 
const eosio::symbol IQSYMBOL = symbol(symbol_code("IQ"), 3);
const int64_t IQ_PRECISION_MULTIPLIER = 1000;

class [[eosio::contract("iqlockupctcr")]] iqlockupctcr : public contract {
  using contract::contract;

  public:
    using ipfshash_t = std::string;


    [[eosio::action]]
    void deposit( asset quantity );

    [[eosio::action]]
    void cleanout( );

    [[eosio::action]]
    void gettranches( );


  private:
    struct [[eosio::table]] status {
        asset balance;
        bool deposit_complete = 0; // Initial deposit done? 
        uint32_t num_tranches_collected; // 1 to TOTAL_TRANCHES
        uint32_t final_tranche_available_time; // Timestamp when the last tranche can be collected

        uint64_t primary_key()const { return balance.symbol.code().raw(); }
    };

    typedef eosio::multi_index<name("status"), status> statustbl;
};
