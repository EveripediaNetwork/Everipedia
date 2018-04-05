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

      bool is_new_user (const account_name& _thisaccount){
            // Account history plugin is currently broken. Will have to include this when available
            // See: https://github.com/EOSIO/eos/blob/master/plugins/account_history_plugin/account_history_plugin.cpp

            //vector<ordered_transaction_results> theTransactions = eosio::account_history_plugin_impl::get_transactions(account_name).transactions;

            //for(unsigned int i = 0; i < theTransactions.size(); i++){
            //      auto pretty_trx = abi_serializer::from_variant(theTransactions[i].transaction, PARAM1, PARAM2);
            //      //  THIS IS WHAT IS RETURNED
            //      // struct ordered_transaction_results {
            //      //    uint32_t                    seq_num;
            //      //    chain::transaction_id_type  transaction_id;
            //      //    fc::variant                 transaction;
            //      // };

            //      // fc::variant is generated from abi_serializer::to_variant
            //      // assuming it is a transaction per transaction.hpp and transaction.cpp below
            //      // you need to loop through and look for token transfers from ARTICLE_CONTRACT to _thisaccount
            //      // if there is, return false immediately
            //      // else, return true

            //      // transaction object (assumed)
            //      // https://github.com/EOSIO/eos/blob/master/libraries/chain/include/eosio/chain/transaction.hpp
            //      // https://github.com/EOSIO/eos/blob/master/libraries/chain/transaction.cpp
            //}
            return true;
      }

      // DB Table Schemas
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
            uint64_t timestamp; // epoch time of the proposal
            enum status { pending, accepted, rejected };

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
            uint64_t timestamp; // epoch time of the vote

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
      > Wikis; // EOS table for the articles

      // edit proposals table
      // 12-char limit on table names, so proposals used instead of editproposals
      // indexed by hash
      eosio::multi_index<N(proposals), editproposal,
          indexed_by< N(byhash), const_mem_fun< editproposal, ipfshash_t, &editproposal::get_hash >>
      > EditProposals; // EOS table for the edit proposals

      // votes table
      eosio::multi_index<N(votes), vote,
          indexed_by< N(byproposal), const_mem_fun< vote, ipfshash_t, &vote::get_proposed >>
      > Votes; // EOS table for the votes

      //  ==================================================
      //  ==================================================
      //  ==================================================
      // Helper Functions

      // get a wiki hash from the database
      wiki get_wiki_by_hash(ipfshash_t& _ipfs_hash) {
            //auto hash_index = Wikis.get_index<N(byhash)>();
            //auto toitr = hash_index.find( std::forward<ipfshash_t>(_ipfs_hash) );
            //eosio_assert(toitr != hash_index.end())
            //return *toitr;
            wiki w;
            return w;
      }

      // get a proposal hash from the database
      // indexes for non-number types aren't supported
      editproposal get_proposal_by_hash(ipfshash_t& _ipfs_hash){
            //auto hash_index = EditProposals.get_index<N(byhash)>();
            //auto toitr = hash_index.find( std::forward<ipfshash_t>(_ipfs_hash) );
            //eosio_assert(toitr != hash_index.end())
            //return *toitr;
            editproposal e;
            return e;
      }

//  ==================================================
//  ==================================================
//  ==================================================
// ABI Functions
public:
      void submit_proposal( const editproposal& _editprop ); // submit proposal
      void place_vote ( const vote& _vote ); // vote on a proposal
      void finalize_proposal( const editproposal& _editprop ); // finalize proposal



};
