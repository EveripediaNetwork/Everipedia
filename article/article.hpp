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
#include <eosiolib/db.h>
#include <eosio/account_history_plugin/account_history_plugin.cpp>
#include <iq/iq.hpp>

namespace article {
      const int DEFAULT_VOTING_TIME = 28800;
      const int MINIMUM_EDIT_IQ = 1;
      const account_name ARTICLE_CONTRACT = "iqarticlecnt";
      using ipfshash_t = unsigned char[34];

      bool is_new_user (const account_name& _thisaccount){
            // See: https://github.com/EOSIO/eos/blob/master/plugins/account_history_plugin/account_history_plugin.cpp
            vector<ordered_transaction_results> theTransactions = eosio::account_history_plugin_impl::get_transactions(account_name).transactions;

            for(unsigned int i = 0; i < theTransactions.size(); i++){
                  auto pretty_trx = abi_serializer::from_variant(theTransactions[i].transaction, PARAM1, PARAM2);
                  //  THIS IS WHAT IS RETURNED
                  // struct ordered_transaction_results {
                  //    uint32_t                    seq_num;
                  //    chain::transaction_id_type  transaction_id;
                  //    fc::variant                 transaction;
                  // };

                  // fc::variant is generated from abi_serializer::to_variant
                  // assuming it is a transaction per transaction.hpp and transaction.cpp below
                  // you need to loop through and look for token transfers from ARTICLE_CONTRACT to _thisaccount
                  // if there is, return false immediately
                  // else, return true

                  // transaction object (assumed)
                  // https://github.com/EOSIO/eos/blob/master/libraries/chain/include/eosio/chain/transaction.hpp
                  // https://github.com/EOSIO/eos/blob/master/libraries/chain/transaction.cpp
            }
      }

      // DB Table Schemas
      struct wiki {
            ipfshash_t hash; // IPFS hash of the current consensus article version
            ipfshash_t parent_hash; // IPFS hash of the parent article version
            wiki() {}

            static wiki get_by_hash(const ipfshash_t& _ipfs_hash){
                  auto toitr = Wikis.find( _ipfs_hash );
                  if( toitr != Wikis.end() ) {
                        return *toitr;
                  }
            }
      };

      // Message Schemas
      struct editproposal {
            ipfshash_t proposed_article_hash; // IPFS hash of the proposed new version
            ipfshash_t edit_diff_hash; // diff hash between the versions
            ipfshash_t old_article_hash; // IPFS hash of the old version
            account_name proposer; // account name of the proposer
            uint64_t timestamp; // epoch time of the proposal
            uint8_t status; // 0 = pending, 1 = accepted, 2 = rejected

            editproposal() {}

            static editproposal get_by_hash(const ipfshash_t& _ipfs_hash){
                  auto toitr = EditProposals.find( _ipfs_hash );
                  if( toitr != EditProposals.end() ) {
                        return *toitr;
                  }
            }

      };

      // Voting tally
      struct vote {
            ipfshash_t proposed_article_hash; // IPFS hash of the proposed new version
            uint64_t votevalue; // positive or negative value indicating the vote / staked amount
            account_name voter; // account name of the voter
            uint64_t timestamp; // epoch time of the vote

            vote() {}
      };

      eosio::multi_index<N(wikis), wiki> Wikis; // EOS table for the articles
      eosio::multi_index<N(editproposals), editproposal> EditProposals; // EOS table for the edit proposals
      eosio::multi_index<N(votes), vote> Votes; // EOS table for the votes

      //  ====================================================================================================
      //  ====================================================================================================
      //  ====================================================================================================
      // ABI Functions
      void submit_proposal( const editproposal& _editprop ); // submit proposal
      void place_vote ( const vote& _vote ); // vote on a proposal
      void finalize_proposal( const editproposal& _editprop ); // finalize proposal
}
