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

class [[eosio::contract("everipediaiq")]] everipediaiq : public contract {
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
                     std::string memo,
                     name permission );

    [[eosio::action]]
    void epartpropose( name proposer, 
                        std::string slug,
                        ipfshash_t ipfs_hash,
                        std::string lang_code,
                        int64_t group_id,
                        std::string comment,
                        std::string memo, 
                        name permission );

    //  ==================================================
    // GUILD ACTIONS

    // GUILD DIVIDEND
    // Takes the guild's (iq_free + iq_staked) and subtracts the sum of all member's contributions from guildroster to get the 'profit'
    // Once the profit is calculated, distributes it to all guildroster members proportionately based on their iq_deposited
    // Optionally multiplies the 'profit' first by a dividend rate, so it isn't all given away and some is retained
    // Must be manually triggered
    [[eosio::action]]
    void gld_dividend( name initiator, // Must be the 'master' or an 'officer'
                        int64_t ratepermille, // The per mille (instead of percent) dividend rate
                        std::string memo); // (optional) A memo for the dividend

    // DEPOSIT INTO GUILD
    [[eosio::action]]
    void gld_deposit( name depositor, // The account depositing into the guild
                        uint64_t _guild_id, // The ID of the guild the deposit is going to
                        asset quantity, // Amount of IQ being deposited
                        std::string memo ); // (optional) A memo for the deposit

    // WITHDRAW DEPOSIT FROM GUILD
    [[eosio::action]]
    void gld_withdraw( name withdrawer, // The account withdrawing from the guild
                        uint64_t _guild_id, // The ID of the guild the withdrawal is coming from
                        asset quantity, // Amount of IQ being withdrawn
                        std::string memo ); // (optional) A memo for the withdrawal

    // CHANGE THE ROLE OF A GUILD MEMBER
    [[eosio::action]]
    void gld_chngrole( name changer, // Must be a guildmaster or an officer
                        name target, // The guild member being targeted
                        std::string new_role, // 'guildmaster' | 'officer' | 'user' | 'patron'
                        std::string memo ); // (optional) A memo for the change


    //  ==================================================

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

    //  ==================================================
    // GUILD TABLES

    struct [[eosio::table]] guild {
        uint64_t id;
        std::string title; // Display name of guild
        std::string slug; // URL slug of the guild.
        std::string slogan; // Slogan
        std::string platform; // 'everipedia' only, initially
        uint32_t creation; // Creation date
        asset iq_free; // Total free iq
        asset iq_staked; // Total staked_iq
    }

    struct [[eosio::table]] guildroster {
        uint64_t id; 
        uint64_t guild_id; // ID of the guild
        name member; // Account name
        std::string role; // 'guildmaster' | 'officer' | 'user' | 'patron'
        uint32_t join_date; // Date joined
        asset iq_deposited; // Amount of IQ deposited
    }

    // Guild roles explained
    // guildmaster: Appoint / remove editors, Appoint / remove officers, use things (like making edits), vote
    // officer: Appoint / remove editors, use things, vote
    // user: use things
    // patron: Nothing (sole purpose is to delegate IQ)


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
