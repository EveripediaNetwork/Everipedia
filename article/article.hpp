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

class article : public contract {

private:
      const int DEFAULT_VOTING_TIME = 28800;
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
            ipfshash_t proposed_article_hash; // IPFS hash of the proposed new version
            uint64_t votevalue; // positive or negative value indicating the vote / staked amount
            account_name voter; // account name of the voter
            std::time_t timestamp; // epoch time of the vote

            uint64_t primary_key()const { return id; }
            ipfshash_t get_proposed () const { return proposed_article_hash; }
            vote() {}
      };


      //  ==================================================
      //  ==================================================
      //  ==================================================
      // DATABASE TABLES

      // wikis table
      // indexed by wiki hash
      // indexed by parent hash
      eosio::multi_index<N(wikis), wiki,
        indexed_by< N(byhash), const_mem_fun< wiki, ipfshash_t, &wiki::get_hash >>,
        indexed_by< N(byparent), const_mem_fun< wiki, ipfshash_t, &wiki::get_parent_hash >>
      > wikis_table; // EOS table for the articles

      // edit proposals table
      // 12-char limit on table names, so proposals used instead of editproposals
      // indexed by hash
      eosio::multi_index<N(proposals), editproposal> edit_proposals_table; // EOS table for the edit proposals

      // votes table
      eosio::multi_index<N(votes), vote,
          indexed_by< N(byproposal), const_mem_fun< vote, ipfshash_t, &vote::get_proposed >>
      > votes_table; // EOS table for the votes


    // ==================================================
    // =================================================
    // ==================================================
    // HELPER FUNCTIONS

    bool is_new_user (const account_name& _thisaccount){
        return true;
    }


public:
    article( account_name self ) :contract(self), 
    wikis_table( _self, _self), edit_proposals_table(_self, _self), votes_table(_self, _self) {}
    //  ==================================================
    //  ==================================================
    //  ==================================================
    // ABI Functions

    void submit_proposal( ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash ) { 
        
        // TODO:if there is a brand new user, give them free IQ to make their first edit
        
        // TODO: make sure there is enough IQ to make an edit

        // store the proposal
        edit_proposals_table.emplace( _self, [&]( auto& a ) {
            a.id = 1;
            a.proposed_article_hash = proposed_article_hash;
            a.old_article_hash = old_article_hash;
            using chrono = std::chrono::system_clock;
            a.timestamp = chrono::to_time_t(chrono::now());
            a.status = ProposalStatus::pending;
        });

        // TODO: Stake IQ
    }

    // vote on a proposal
    void place_vote ( const vote& _vote ) {

    }

    // calculate proposal result after votes are complete
    void finalize_proposal( const editproposal& _editprop ) {

    }



};
