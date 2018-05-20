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

class eparticle : public eosio::contract {

private:
    const uint32_t DEFAULT_VOTING_TIME = 86400; // 1 day
    const uint64_t STAKING_DURATION = 21 * 86400; // 21 days
    const uint32_t EDIT_PROPOSE_BRAINPOWER = 10;
    const uint32_t IQ_TO_BRAINPOWER_RATIO = 10;
    symbol_type IQSYMBOL = symbol_type(eosio::string_to_symbol(4, "IQ"));

    // returning array types from a DB type struct throws
    // using vectors for now, will try to use arrays later
    //using ipfshash_t = unsigned char[34];
    using byte = unsigned char;
    using ipfshash_t = std::string;
    enum ProposalStatus { pending, accepted, rejected };

    // ==================================================
    // ==================================================
    // ==================================================
    // DATABASE SCHEMAS

    struct wiki {
          uint64_t id;
          ipfshash_t hash; // IPFS hash of the current consensus article version
          ipfshash_t parent_hash; // IPFS hash of the parent article version

          // only uint64_t primary keys are allowed for some reason
          // not sure if that's temporary or a design decision
          // will update to ipfshash_t primary key later if possible
          //ipfshash_t primary_key()const { return hash; }
          uint64_t primary_key () const { return id; }

          wiki() {}
          ipfshash_t get_hash () const { return hash; }
          ipfshash_t get_parent_hash () const { return parent_hash; }
    };

    // Edit Proposals
    struct editproposal {
          uint64_t id;
          ipfshash_t proposed_article_hash; // IPFS hash of the proposed new version
          ipfshash_t old_article_hash; // IPFS hash of the old version
          account_name proposer; // account name of the proposer
          uint32_t timestamp; // epoch time of the proposal
          ProposalStatus status;
          uint64_t primary_key () const { return id; }

          editproposal() {}
          ipfshash_t get_hash () const { return proposed_article_hash; }

    };

    // Voting tally
    struct vote {
          uint64_t id;
          uint64_t proposal_id;
          bool approve;
          uint64_t amount;
          account_name voter; // account name of the voter
          uint32_t timestamp; // epoch time of the vote

          uint64_t primary_key()const { return id; }
          uint64_t get_proposal_id()const { return id; }
          vote() {}
    };

    // internal struct for stakes within brainpower
    struct stake {
        uint64_t id;
        account_name user;
        uint64_t amount;
        uint32_t timestamp;
        uint64_t duration;

        auto primary_key()const { return id; }
        account_name get_user()const { return user; }
    };

    // test struct
    struct teststruct {
        account_name user;
        uint64_t b;
        uint64_t c;

        account_name primary_key()const { return user; }
    };

    // Brainpower balances
    struct brainpower {
        account_name user;
        uint64_t power = 25000; // TODO: need to fix this later

        account_name primary_key()const { return user; }

        // subtraction with underflow check
        uint64_t sub (uint64_t value) {
            eosio_assert(value >= power, "Underflow during subtraction");
            power -= value;
            return power;
        }

        // addition with overflow check
        uint64_t add (uint64_t value) {
            eosio_assert(value + power > value && value + power > power, "Overflow during addition");
            power += value;
            print( "Added brainpower, ", name{power} );
            return power;
        }
    };



    //  ==================================================
    //  ==================================================
    //  ==================================================
    // DATABASE TABLES
    // GUIDE: https://github.com/EOSIO/eos/wiki/Persistence-API

    // wikis table
    // indexed by wiki hash - currently not supported
    // indexed by parent hash - currently not supported
    // @abi table
    typedef eosio::multi_index<N(wikistbl), wiki
      //,indexed_by< N(byhash), const_mem_fun< wiki, ipfshash_t, &wiki::get_hash >>
      //,indexed_by< N(byparent), const_mem_fun< wiki, ipfshash_t, &wiki::get_parent_hash >>
    > wikistbl; // EOS table for the articles

    // edit proposals table
    // 12-char limit on table names, so proposals used instead of editproposals
    // indexed by hash
    // @abi table
    typedef eosio::multi_index<N(propstbl), editproposal> propstbl; // EOS table for the edit proposals

    // votes table
    // indexed by proposal
    // @abi table
    typedef eosio::multi_index<N(votestbl), vote,
        indexed_by< N(byproposal), const_mem_fun< vote, uint64_t, &vote::get_proposal_id >>
    > votestbl; // EOS table for the votes

    // brainpower table
    // @abi table
    typedef eosio::multi_index<N(brainpwrtbl), brainpower> brainpwrtbl;

    // test table
    // @abi table
    typedef eosio::multi_index<N(testtbl), teststruct> testtbl;

    // stake table
    // @abi table
    typedef eosio::multi_index<N(staketbl), stake, indexed_by< N(byuser), const_mem_fun<stake, account_name, &stake::get_user>>> staketbl;

    // ==================================================
    // =================================================
    // ==================================================
    // HELPER FUNCTIONS

    bool isnewuser (const account_name& _thisaccount);


public:
    eparticle(account_name self) : contract(self) {}

    //  ==================================================
    //  ==================================================
    //  ==================================================
    // ABI Functions

    void propose( account_name proposer,
                  ipfshash_t& proposed_article_hash,
                  ipfshash_t& old_article_hash );

    void placevote ( account_name voter,
                      uint64_t proposal_id,
                      bool approve,
                      uint64_t amount );

    void finalize( account_name from,
                   uint64_t proposal_id );

    void testinsert( account_name from);

    void brainme( account_name from,
                   uint64_t amount );

    void withdraw( account_name from );

    uint64_t getiqbalance( account_name from );

};
