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
#include <eosiolib/asset.hpp>
#include <ctime>

using namespace eosio;

// Constants

const name TOKEN_CONTRACT = name("everipediaiq");
const uint64_t STAKING_DURATION = 21 * 86400; // 21 days
const uint64_t EDIT_PROPOSE_IQ = 50; // 50 IQ
const uint32_t REWARD_INTERVAL = 1800; // 30 min
const uint32_t DEFAULT_VOTING_TIME = 43200; // 12 hours
const uint64_t IQ_PRECISION_MULTIPLIER = 1000;
const float TIER_ONE_THRESHOLD = 0.5f;
const uint64_t PERIOD_CURATION_REWARD = 100000; // 100 IQ per period
const uint64_t PERIOD_EDITOR_REWARD = 400000; // 400 IQ per period
const uint64_t MAX_SLUG_SIZE = 256;
const uint64_t MAX_LANG_CODE_SIZE = 7;
const uint64_t MIN_LANG_CODE_SIZE = 2;
const uint64_t MAX_COMMENT_SIZE = 256;
const uint64_t MAX_MEMO_SIZE = 32;
const uint64_t MAX_IPFS_SIZE = 100;
const eosio::symbol IQSYMBOL = symbol(symbol_code("IQ"), 3);

class [[eosio::contract("eparticlectr")]] eparticlectr : public contract {
public:

    using contract::contract;
    using ipfshash_t = std::string;

    // ==================================================
    // ==================================================
    // ==================================================
    // Helper functions
    static fixed_bytes<32> sha256_slug_lang(std::string slug, std::string lang_code) {
        eosio_assert(slug.size() <= MAX_SLUG_SIZE, "slug max size is 32 bytes");
        eosio_assert(lang_code.size() <= MAX_LANG_CODE_SIZE, "lang_code max size is 8 bytes");
        std::string padded_slug = slug;
        std::string padded_lang_code = lang_code;
        while (padded_slug.size() < MAX_SLUG_SIZE)
            padded_slug.append(" ");
        while (padded_lang_code.size() < MAX_LANG_CODE_SIZE)
            padded_lang_code.append(" ");
        std::string combined = padded_slug + padded_lang_code;
        return sha256(combined.c_str(), combined.size());
    }

    // ==================================================
    // ==================================================
    // ==================================================
    // DATABASE SCHEMAS
    // Wiki articles
    struct [[eosio::table]] wiki {
        uint64_t id; 
        std::string slug; // Article slug. Can be changed, (slug + lang_code) must be unique. Size limit is MAX_SLUG_SIZE
        uint64_t group_id; // Used to group articles on same topic in different languages. Can be used for Greater Wiki groupings later. Generally, the id of the English-version article is used as the group ID, but any system can be used
        std::string lang_code; // ISO 639-1 language code. Size limit is MAX_LANG_CODE_SIZE
        ipfshash_t ipfs_hash; // IPFS hash of the current consensus article version

        uint64_t primary_key () const { return id; }
        fixed_bytes<32> hash_slug_lang () const { 
            return sha256_slug_lang(slug, lang_code);
        }
    };

    // Internal struct for stakes 
    struct [[eosio::table]] stake {
        uint64_t id;
        name user;
        uint64_t amount;
        uint32_t timestamp;
        uint32_t completion_time;

        uint64_t primary_key()const { return id; }
        uint64_t get_user()const { return user.value; }
    };

    // Voting tally
    struct [[eosio::table]] vote_t {
          uint64_t id;
          uint64_t proposal_id;
          ipfshash_t ipfs_hash; // IPFS hash of the proposed new version
          bool approve;
          bool is_editor;
          uint64_t amount;
          name voter; // account name of the voter
          uint32_t timestamp; // epoch time of the vote
          uint64_t stake_id; // the id of the stake generated by the vote. used for slashing
          std::string memo; // optional memo to pass thru logging actions. primarily used by proxy contracts to identify sub-permisisons responsible for an edit. Size limit is MAX_MEMO_SIZE

          uint64_t primary_key()const { return id; }
    };

    // Edit Proposals
    struct [[eosio::table]] editproposal {
        uint64_t id;
        int64_t wiki_id; // the ID of the wiki for the proposal
        name proposer; // account name of the proposer
        std::string slug; // article slug. Size limit is MAX_SLUG_SIZE
        ipfshash_t ipfs_hash; // IPFS hash of the proposed new version
        int64_t group_id;
        std::string lang_code; // ISO 639-1 language code. Size limit is MAX_LANG_CODE_SIZE
        uint32_t starttime; // UNIX timestamp of beginning of voting period
        uint32_t endtime; // UNIX timestamp of end of voting period
        std::string memo; // optional memo to pass thru logging actions. primarily used by proxy contracts to identify sub-permisisons responsible for an edit. Size limit is MAX_MEMO_SIZE
        bool finalized; 

        uint64_t primary_key () const { return id; }
    };

    // Internal struct for history of success rewards and reject slashes
    // slashes will be done immediately at finalize(). Rewards will be done at 30min periods
    struct [[eosio::table]] rewardhistory {
        uint64_t id;
        name user;
        uint64_t vote_points; // reward amount
        uint64_t edit_points; // sum of all "for" votes for this proposal
        uint64_t proposal_id; // id of the proposal that this person voted on
        uint32_t proposal_finalize_time; // when finalize() was called
        uint32_t proposal_finalize_period; // truncate to the nearest period
        bool proposalresult = 0;
        bool is_editor = 0;
        bool is_tie = 0;
        std::string memo; // optional memo to pass thru logging actions. primarily used by proxy contracts to identify sub-permisisons responsible for an edit. Size limit is MAX_MEMO_SIZE

        uint64_t primary_key()const { return id; }
        uint64_t get_user()const { return user.value; }
        uint64_t get_proposal()const { return proposal_id; }
        uint64_t get_finalize_period()const { return proposal_finalize_period; }
    };

    struct [[eosio::table]] periodreward {
        uint64_t period;
      	uint64_t curation_sum;
      	uint64_t editor_sum;

        uint64_t primary_key() const { return period; }
    };

    //  ==================================================
    //  ==================================================
    //  ==================================================
    // DATABASE TABLES
    // GUIDE: https://developers.eos.io/eosio-cpp/docs/db-api

    // wikis table
    // composite of slug + lang_code must be unique
    typedef eosio::multi_index<name("wikistbl2"), wiki,
        indexed_by< name("uniqsluglang"), const_mem_fun<wiki, fixed_bytes<32>, &wiki::hash_slug_lang>>
    > wikistbl; // EOS table for the articles

    // stake table
    typedef eosio::multi_index<name("staketbl2"), stake,
        indexed_by< name("byuser"), const_mem_fun<stake, uint64_t, &stake::get_user >>
    > staketbl;

    // votes table
    // scoped by proposal
    typedef eosio::multi_index<name("votestbl2"), vote_t > votestbl; // EOS table for the votes

    // edit proposals table
    typedef eosio::multi_index<name("propstbl2"), editproposal> propstbl; // EOS table for the edit proposals


    // rewards history table
    typedef eosio::multi_index<name("rewardstbl2"), rewardhistory,
        indexed_by< name("byuser"), const_mem_fun<rewardhistory, uint64_t, &rewardhistory::get_user>>,
        indexed_by< name("byfinalper"), const_mem_fun<rewardhistory, uint64_t, &rewardhistory::get_finalize_period >>,
        indexed_by< name("byproposal"), const_mem_fun<rewardhistory, uint64_t, &rewardhistory::get_proposal >>
    > rewardstbl;

    // period rewards table
    typedef eosio::multi_index<name("perrwdstbl2"), periodreward> perrwdstbl;


    //  ==================================================
    //  ==================================================
    //  ==================================================
    // ABI Functions

    [[eosio::action]]
    void brainclmid( uint64_t stakeid );

    [[eosio::action]]
    void slashnotify( name slashee,
                      uint64_t amount,
                      uint32_t seconds, 
                      std::string memo );

    [[eosio::action]]
    void finalize( uint64_t proposal_id );

    [[eosio::action]]
    void oldvotepurge( uint64_t proposal_id,
                       uint32_t loop_limit);

    [[eosio::action]]
    void procrewards( uint64_t reward_period );

    [[eosio::action]]
    void propose2( name proposer, 
                  int64_t wiki_id, 
                  std::string slug, 
                  ipfshash_t ipfs_hash, 
                  std::string lang_code,
                  int64_t group_id,
                  std::string comment, 
                  std::string memo );

    [[eosio::action]]
    void vote( name voter,
               uint64_t proposal_id,
               bool approve,
               uint64_t amount,
               std::string comment,
               std::string memo );

    [[eosio::action]]
    void rewardclmid ( uint64_t reward_id );

    [[eosio::action]]
    void logpropres( uint64_t proposal_id, 
                     bool approved, 
                     uint64_t yes_votes, 
                     uint64_t no_votes );

    [[eosio::action]]
    void logpropinfo( uint64_t proposal_id,
                      name proposer, 
                      uint64_t wiki_id, 
                      std::string slug, 
                      ipfshash_t ipfs_hash, 
                      std::string lang_code,
                      uint64_t group_id,
                      std::string comment, 
                      std::string memo,
                      uint32_t starttime, 
                      uint32_t endtime );
};
