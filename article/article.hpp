// CURRENTLY DOES NOT COMPILE
// WORK IN PROGRESS
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

class article : public eosio::contract {

private:
    const int DEFAULT_VOTING_TIME = 86400;
    const int MINIMUM_EDIT_IQ = 1;
    const account_name ARTICLE_CONTRACT = N("iqarticlecnt");

    // returning array types from a DB type struct throws
    // using vectors for now, will try to use arrays later 
    //using ipfshash_t = unsigned char[34];
    using byte = unsigned char;
    using ipfshash_t = std::vector<byte>;
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
          std::time_t timestamp; // epoch time of the proposal
          ProposalStatus status;
          uint64_t primary_key () const { return id; }

          editproposal() {}
          ipfshash_t get_hash () const { return proposed_article_hash; }

    };

    // Voting tally
    struct vote {
          uint64_t id;
          uint64_t proposal_id;
          uint64_t amount; // positive or negative value indicating the vote / staked amount
          account_name voter; // account name of the voter
          std::time_t timestamp; // epoch time of the vote

          uint64_t primary_key()const { return id; }
          uint64_t get_proposal_id()const { return id; }
          vote() {}
    };


    //  ==================================================
    //  ==================================================
    //  ==================================================
    // DATABASE TABLES

    // wikis table
    // indexed by wiki hash - currently not supported
    // indexed by parent hash - currently not supported
    typedef eosio::multi_index<N(wikis), wiki
      //,indexed_by< N(byhash), const_mem_fun< wiki, ipfshash_t, &wiki::get_hash >>
      //,indexed_by< N(byparent), const_mem_fun< wiki, ipfshash_t, &wiki::get_parent_hash >>
    > wikis_table; // EOS table for the articles

    // edit proposals table
    // 12-char limit on table names, so proposals used instead of editproposals
    // indexed by hash
    typedef eosio::multi_index<N(proposals), editproposal> edit_proposals_table; // EOS table for the edit proposals

    // votes table
    // indexed by proposal
    typedef eosio::multi_index<N(votes), vote,
        indexed_by< N(byproposal), const_mem_fun< vote, uint64_t, &vote::get_proposal_id >>
    > votes_table; // EOS table for the votes


    // ==================================================
    // =================================================
    // ==================================================
    // HELPER FUNCTIONS

    bool is_new_user (const account_name& _thisaccount){
        return true;
    }


public:
    article(account_name self) : contract(self) {}
    //  ==================================================
    //  ==================================================
    //  ==================================================
    // ABI Functions

    void submit_proposal( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash ) { 
        
        // TODO:if there is a brand new user, give them free IQ to make their first edit
        
        // TODO: Stake IQ

        // store the proposal
        edit_proposals_table proptable( _self, proposer );
        proptable.emplace( _self, [&]( auto& a ) {
            a.id = 1;
            a.proposed_article_hash = proposed_article_hash;
            a.old_article_hash = old_article_hash;
            using chrono = std::chrono::system_clock;
            a.timestamp = chrono::to_time_t(chrono::now());
            a.status = ProposalStatus::pending;
        });

    }

    // vote on a proposal
    void place_vote ( account_name voter, uint64_t proposal_id, uint64_t amount ) {
        
        // Check if article exists
        edit_proposals_table proptable( _self, voter );
        auto prop_it = proptable.find( proposal_id );
        eosio_assert( prop_it != proptable.end(), "proposal not found" );

        // Verify voting is still in progress
        using chrono = std::chrono::system_clock;
        std::time_t now = chrono::to_time_t(chrono::now());
        eosio_assert( now < prop_it->timestamp + DEFAULT_VOTING_TIME, "voting period is over");

        // TODO: Send IQ to contract

        // Store vote in DB
        votes_table votetbl( _self, voter );
        votetbl.emplace( voter, [&]( auto& a ) {
             // TODO: incrementing IDs
             a.proposal_id = proposal_id;
             a.amount = amount;
             a.voter = voter;
             a.timestamp = now;
        });

    }

    void finalize_proposal( account_name from, uint64_t proposal_id ) {

         // Verify proposal exists
         edit_proposals_table proptable( _self, _self );
         auto prop_it = proptable.find( proposal_id );
         eosio_assert( prop_it != proptable.end(), "proposal not found" );

         // Verify voting period is complete
          using chrono = std::chrono::system_clock;
          std::time_t now = chrono::to_time_t(chrono::now());
          eosio_assert( now > prop_it->timestamp + DEFAULT_VOTING_TIME, "voting period is over");

         // TODO: Retrieve votes from DB

         // TODO: Tally votes


         // TODO: Mark proposal as accepted or rejected. Ties are rejected
         proptable.modify( prop_it, 0, [&]( auto& a ) {
             a.status =  ProposalStatus::accepted;
         });

         // TODO: Reward the pro votes

         // TODO: Punish the anti votes

         // TODO: Add article to database
         wikis_table wikitbl( _self, _self );
         wikitbl.emplace( _self,  [&]( auto& a ) {
             // TODO: incrementing ID
             a.hash = prop_it->proposed_article_hash;
             a.parent_hash = prop_it->old_article_hash;
         });
    }



};
