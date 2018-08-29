// # 2018 Travis Moore, Kedar Iyer, Sam Kazemian
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMmdhhydNMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMNdy    hMMMMMMNdhhmMMMddMMMMMMMMMMMMM
// # MMMMMMMMMMMmh      hMMMMMMh     yMMM  hNMMMMMMMMMM
// # MMMMMMMMMNy       yMMMMMMh       MMMh   hNMMMMMMMM
// # MMMMMMMMd         dMMMMMM       hMMMh     NMMMMMMM
// # MMMMMMMd          dMMMMMN      hMMMm       mMMMMMM
// # MMMMMMm           yMMMMMM      hmmh         NMMMMM
// # MMMMMMy            hMMMMMm                  hMMMMM
// # MMMMMN             hNMMMMMmy                 MMMMM
// # MMMMMm          ymMMMMMMMMmd                 MMMMM
// # MMMMMm         dMMMMMMMMd                    MMMMM
// # MMMMMMy       mMMMMMMMm                     hMMMMM
// # MMMMMMm      dMMMMMMMm                      NMMMMM
// # MMMMMMMd     NMMMMMMM                      mMMMMMM
// # MMMMMMMMd    NMMMMMMN                     mMMMMMMM
// # MMMMMMMMMNy  mMMMMMMM                   hNMMMMMMMM
// # MMMMMMMMMMMmyyNMMMMMMm         hmh    hNMMMMMMMMMM
// # MMMMMMMMMMMMMNmNMMMMMMMNmdddmNNd   ydNMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMNdhyhdmMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMNNMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

#include <eosiolib/eosio.hpp>
#include <ctime>

using namespace eosio;

const account_name ARTICLE_CONTRACT_ACCTNAME = N(eparticlectr);
const account_name TOKEN_CONTRACT_ACCTNAME = N(everipediaiq);
const uint64_t IQ_TO_BRAINPOWER_RATIO = 1;
const uint64_t STAKING_DURATION = 21 * 86400; // 21 days
const uint64_t EDIT_PROPOSE_BRAINPOWER = 10;
const uint32_t REWARD_INTERVAL = 1800; // 30 min
const uint32_t DEFAULT_VOTING_TIME = 21600; // 6 hours
const uint64_t IQ_PRECISION_MULTIPLIER = 1000;
const float TIER_ONE_THRESHOLD = 0.5f;
uint64_t PERIOD_CURATION_REWARD = 2000; // 2 IQ per period during beta. Will be increased later
uint64_t PERIOD_EDITOR_REWARD = 8000; // 8 IQ per period during beta. Will be increased later

class eparticlectr : public eosio::contract {

private:
    using ipfshash_t = std::string;
    enum ProposalStatus { pending, accepted, rejected };

public:
    symbol_type IQSYMBOL = eosio::symbol_type(eosio::string_to_symbol(3, "IQ"));
    static eosio::key256 ipfs_to_key256(const ipfshash_t& input) {
        key256 returnKey;
        if (input == "") {
            returnKey = key256::make_from_word_sequence<uint64_t>(0ULL, 0ULL, 0ULL, 0ULL);
        }
        else {
            // This is needed for indexing since indexes cannot be done by strings, only max key256's, for now...
            uint64_t p1 = eosio::string_to_name(input.substr(0, 12).c_str());
            uint64_t p2 = eosio::string_to_name(input.substr(13, 24).c_str());
            uint64_t p3 = eosio::string_to_name(input.substr(25, 36).c_str());
            uint64_t p4 = eosio::string_to_name(input.substr(37, 45).c_str());
            returnKey = key256::make_from_word_sequence<uint64_t>(p1, p2, p3, p4);
        }
        return returnKey;
    }

    // This is until secondary keys get fixed with cleos get table :)
    static uint64_t ipfs_to_uint64_trunc(const ipfshash_t& input) {
        ipfshash_t newHash = input;
        char chars[] = "6789";
        for (unsigned int i = 0; i < strlen(chars); ++i)
        {
           newHash.erase(std::remove(newHash.begin(), newHash.end(), chars[i]), newHash.end());
        }
        ipfshash_t truncatedHash = newHash.substr(2,12);
        transform(truncatedHash.begin(), truncatedHash.end(), truncatedHash.begin(), ::tolower);
        const char* cstringedMiniHash = truncatedHash.c_str();
        // print(cstringedMiniHash, "\n");
        uint64_t hashNumber = eosio::string_to_name(cstringedMiniHash);
        // print("Before: ", hashNumber, "\n");
        hashNumber = hashNumber % 9007199254740990; // Max safe javascript integer
        // print("After: ", hashNumber, "\n");
        return(hashNumber);
    }

    // This is until secondary keys get fixed with cleos get table :)
    // Dan... please add string indices for cleos get table
    // IMPORTANT: CLEOS GET TABLE USES HEX AS THE INPUT, NOT A RAW INTEGER!!!!!!!
    // static uint128_t ipfs_to_uint128_trunc(const ipfshash_t& input) {
    //     ipfshash_t newHash = input;
    //     char chars[] = "6789";
    //     for (unsigned int i = 0; i < strlen(chars); ++i)
    //     {
    //        newHash.erase(std::remove(newHash.begin(), newHash.end(), chars[i]), newHash.end());
    //     }
    //     ipfshash_t truncatedHash1 = newHash.substr(2,12);
    //     ipfshash_t truncatedHash2 = newHash.substr(13,24);
    //     ipfshash_t truncatedHash3 = newHash.substr(25,36);
    //     ipfshash_t truncatedHash4 = newHash.substr(37,45);
    //
    //     transform(truncatedHash1.begin(), truncatedHash1.end(), truncatedHash1.begin(), ::tolower);
    //     transform(truncatedHash2.begin(), truncatedHash2.end(), truncatedHash2.begin(), ::tolower);
    //     transform(truncatedHash3.begin(), truncatedHash3.end(), truncatedHash3.begin(), ::tolower);
    //     transform(truncatedHash4.begin(), truncatedHash4.end(), truncatedHash4.begin(), ::tolower);
    //
    //     const char* cstringedMiniHash1 = truncatedHash1.c_str();
    //     const char* cstringedMiniHash2 = truncatedHash2.c_str();
    //     const char* cstringedMiniHash3 = truncatedHash3.c_str();
    //     const char* cstringedMiniHash4 = truncatedHash4.c_str();
    //
    //     uint64_t hashNumber1 = eosio::string_to_name(cstringedMiniHash1);
    //     uint64_t hashNumber2 = eosio::string_to_name(cstringedMiniHash2);
    //     uint64_t hashNumber3 = eosio::string_to_name(cstringedMiniHash3);
    //     uint64_t hashNumber4 = eosio::string_to_name(cstringedMiniHash4);
    //
    //     // Combine into two 128-bit ints
    //     uint128_t combo1_2 = ((uint128_t)hashNumber1 << 64) | (uint128_t)hashNumber2;
    //     uint128_t combo3_4 = ((uint128_t)hashNumber3 << 64) | (uint128_t)hashNumber4;
    //
    //     // XOR together
    //     uint128_t result = combo1_2 ^ combo3_4;
    //     print("RESULT UINT128_T is: ", result, "\n");
    //     return(result);
    // }



private:
    // ==================================================
    // ==================================================
    // ==================================================
    // DATABASE SCHEMAS
    // Wiki articles
    // @abi table
    struct wiki {
          uint64_t id;
          ipfshash_t hash; // IPFS hash of the current consensus article version
          ipfshash_t parent_hash; // IPFS hash of the parent article version

          uint64_t primary_key () const { return id; }
          key256 get_hash_key256 () const { return eparticlectr::ipfs_to_key256(hash); }
          key256 get_parent_hash_key256 () const { return eparticlectr::ipfs_to_key256(parent_hash); }
    };

    // Internal struct for stakes within brainpower
    // @abi table
    struct stake {
        uint64_t id;
        account_name user;
        uint64_t deleteme; // required to maintain old schema
        uint64_t amount;
        uint32_t timestamp;
        uint32_t completion_time;
        bool autorenew = 0;

        auto primary_key()const { return id; }
        account_name get_user()const { return user; }
    };

    // Voting tally
    // @abi table
    struct vote {
          uint64_t id;
          uint64_t proposal_id;
          ipfshash_t proposed_article_hash; // IPFS hash of the proposed new version
          bool approve;
          bool is_editor;
          uint64_t amount;
          account_name voter; // account name of the voter
          uint32_t timestamp; // epoch time of the vote

          uint64_t primary_key()const { return id; }
          key256 get_hash_key256 () const { return eparticlectr::ipfs_to_key256(proposed_article_hash); }
          uint64_t get_hash_uint64 () const { return eparticlectr::ipfs_to_uint64_trunc(proposed_article_hash); }
          uint64_t get_proposal_id() const { return id; }
          uint64_t get_voter()const { return voter; }
    };

    // Brainpower balances
    // @abi table
    struct brainpower {
        account_name user;
        uint64_t power = 0; // TODO: need to fix this later

        account_name primary_key()const { return user; }
        uint64_t get_power()const { return power; }

        // subtraction with underflow check
        uint64_t sub (uint64_t value) {
            eosio_assert(value != 0, "Please supply a nonzero value of brainpower to subtract");
            eosio_assert(value <= power, "Underflow during subtraction");
            power -= value;
            return power;
        }

        // addition with overflow check
        uint64_t add (uint64_t value) {
            eosio_assert(value != 0, "Please supply a nonzero value of brainpower to add");
            eosio_assert(value + power >= value && value + power > power, "Overflow during addition");
            power += value;
            print( "Added brainpower, ", name{power} );
            return power;
        }
    };


    // Edit Proposals
    // @abi table
    struct editproposal {
          uint64_t id;
          ipfshash_t proposed_article_hash; // IPFS hash of the proposed new version
          ipfshash_t old_article_hash; // IPFS hash of the old version
          ipfshash_t grandparent_hash; // IPFS hash of the grandparent hash
          account_name proposer; // account name of the proposer
          uint64_t deleteme; // required to maintain old schema
          uint32_t tier;
          uint32_t starttime; // epoch time of the proposal
          uint32_t endtime;
          uint32_t finalized_time; // when finalize() was called
          uint32_t status;

          uint64_t primary_key () const { return id; }
          key256 get_hash_key256 () const { return eparticlectr::ipfs_to_key256(proposed_article_hash); }
          uint64_t get_hash_uint64 () const { return eparticlectr::ipfs_to_uint64_trunc(proposed_article_hash); }
          uint64_t get_finalize_period() const { return (finalized_time / REWARD_INTERVAL); } // truncate to the nearest period
          account_name get_proposer () const { return proposer; }

    };


    // Internal struct for history of success rewards and reject slashes
    // slashes will be done immediately at finalize(). Rewards will be done at 30min periods
    // @abi table
    struct rewardhistory {
        uint64_t id;
        account_name user;
        uint64_t amount; // slash or reward amount
        uint64_t approval_vote_sum; // sum of all "for" votes for this proposal
        uint64_t proposal_id; // id of the proposal that this person voted on
        ipfshash_t proposed_article_hash; // IPFS hash of the proposed new version
        uint32_t proposal_finalize_time; // when finalize() was called
        uint32_t proposal_finalize_period; // truncate to the nearest period
        bool proposalresult = 0;
        bool is_editor = 0;
        bool is_tie = 0;

        auto primary_key()const { return id; }
        account_name get_user()const { return user; }
        uint64_t get_proposal()const { return proposal_id; }
        uint64_t get_finalize_period()const { return proposal_finalize_period; }
    };

    struct periodreward {
        uint64_t period;
      	uint64_t curation_sum;
      	uint64_t editor_sum;

        uint64_t primary_key() const { return period; }
    };

    //  ==================================================
    //  ==================================================
    //  ==================================================
    // DATABASE TABLES
    // GUIDE: https://github.com/EOSIO/eos/wiki/Persistence-API

    // wikis table
    // indexed by wiki hash
    // indexed by parent hash
    // @abi table
    typedef eosio::multi_index<N(wikistbl), wiki,
        indexed_by< N(byhash), const_mem_fun< wiki, eosio::key256, &wiki::get_hash_key256 >>,
        indexed_by< N(byoldhash), const_mem_fun< wiki, eosio::key256, &wiki::get_parent_hash_key256 >>
    > wikistbl; // EOS table for the articles

    // stake table
    // @abi table
    typedef eosio::multi_index<N(staketbl), stake,
        indexed_by< N(byuser), const_mem_fun<stake, account_name, &stake::get_user >>
    > staketbl;

    // brainpower table
    // @abi table
    typedef eosio::multi_index<N(brainpwrtbl), brainpower,
        indexed_by< N(power), const_mem_fun< brainpower, uint64_t, &brainpower::get_power >>
    > brainpwrtbl;

    // votes table
    // indexed by proposal
    // @abi table
    typedef eosio::multi_index<N(votestbl), vote,
        indexed_by< N(byhash), const_mem_fun< vote, eosio::key256, &vote::get_hash_key256 >>,
        indexed_by< N(byhashtrunc), const_mem_fun< vote, uint64_t, &vote::get_hash_uint64 >>,
        indexed_by< N(byproposal), const_mem_fun< vote, uint64_t, &vote::get_proposal_id >>,
        indexed_by< N(byvoter), const_mem_fun< vote, uint64_t, &vote::get_voter >>
    > votestbl; // EOS table for the votes

    // edit proposals table
    // 12-char limit on table names, so proposals used instead of editproposals
    // indexed by hash
    // @abi table
    typedef eosio::multi_index<N(propstbl), editproposal,
        indexed_by< N(byhash), const_mem_fun< editproposal, eosio::key256, &editproposal::get_hash_key256 >>,
        indexed_by< N(byhashtrunc), const_mem_fun< editproposal, uint64_t, &editproposal::get_hash_uint64 >>,
        indexed_by< N(byfinalper), const_mem_fun< editproposal, uint64_t, &editproposal::get_finalize_period >>
    > propstbl; // EOS table for the edit proposals


    // rewards history table
    // @abi table
    typedef eosio::multi_index<N(rewardstbl), rewardhistory,
        indexed_by< N(byuser), const_mem_fun<rewardhistory, account_name, &rewardhistory::get_user>>,
        indexed_by< N(byfinalper), const_mem_fun<rewardhistory, uint64_t, &rewardhistory::get_finalize_period >>,
        indexed_by< N(byproposal), const_mem_fun<rewardhistory, uint64_t, &rewardhistory::get_proposal >>
    > rewardstbl;

    // period rewards table
    // @abi table
    typedef eosio::multi_index<N(periodreward), periodreward> perrwdstbl;


public:
    eparticlectr(account_name self) : contract(self) {}

    //  ==================================================
    //  ==================================================
    //  ==================================================
    // ABI Functions

    void brainclmid( account_name claimant,
                  uint64_t stakeid );

    void brainmeart( account_name staker,
                  uint64_t amount );

    void notify( account_name to,
                  std::string memo );

    void finalize( uint64_t proposal_id );

    void fnlbyhash( ipfshash_t& proposal_hash );

    void oldvotepurge( ipfshash_t& proposed_article_hash,
                       uint32_t loop_limit);

    void procrewards( uint64_t reward_period );

    void propose( account_name proposer,
                  ipfshash_t& proposed_article_hash,
                  ipfshash_t& old_article_hash,
                  ipfshash_t& grandparent_hash );

    void updatewiki( ipfshash_t& current_hash );

    void votebyhash ( account_name voter,
                      ipfshash_t& proposed_article_hash,
                      bool approve,
                      uint64_t amount );

    void rewardclmall ( account_name user );

    void rewardclmid ( uint64_t reward_id );
};
