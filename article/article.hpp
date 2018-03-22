#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>
#include <eosio/account_history_plugin/account_history_plugin.cpp>
#include <iq/iq.hpp>

namespace article {
      const int DEFAULT_VOTING_TIME = 28800;
      const int MINIMUM_EDIT_IQ = 1;
      const account_name ARTICLE_CONTRACT = "iqarticlecnt";
      using ipfshash_t = unsigned char[34];

      bool is_new_user (const account_name& _thisaccount){
            // See: https://github.com/EOSIO/eos/blob/master/plugins/account_history_plugin/account_history_plugin.cpp
            vector<ordered_transaction_results> theTransactions = eosio::account_history_plugin_impl::get_transactions(_thisaccount).transactions;

            for(unsigned int i = 0; i < theTransactions.size(); i++){
                  //  THIS IS WHAT IS RETURNED
                  // fc::variant is generated from abi_serializer::to_variant
                  // assuming it is a transaction per transaction.hpp and transaction.cpp below
                  // you need to loop through and look for token transfers from ARTICLE_CONTRACT to _thisaccount
                  // if there is, return false immediately
                  // else, return true


                  // struct ordered_transaction_results {
                  //    uint32_t                    seq_num;
                  //    chain::transaction_id_type  transaction_id;
                  //    fc::variant                 transaction;
                  // };

                  // transaction object (assumed)
                  // https://github.com/EOSIO/eos/blob/master/libraries/chain/include/eosio/chain/transaction.hpp
                  // https://github.com/EOSIO/eos/blob/master/libraries/chain/transaction.cpp


            }

            // TODO: scan all ARTICLE_CONTRACT transactions to account_name

      }

      // DB Table Schemas
      struct wiki {
            ipfshash_t hash; // IPFS hash of the current consensus article version
            ipfshash_t parent_hash; // IPFS hash of the parent article version
            wiki() {}

            static wiki get_by_hash(const ipfshash_t& _ipfs_hash){
                  wiki ReturnedWiki =  wiki(); // need variable to store &reference return value
                  Wikis::get(_ipfs_hash, ReturnedWiki); // eosio::table lookup by new_article_hash
                  return ReturnedWiki;
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

            //THESE TABLE LOOKUPS ARE LIKELY SYNTAX MALFORMED
            static editproposal get_by_hash(const ipfshash_t& _ipfs_hash){
                  editproposal ReturnedProposal =  editproposal(); // need variable to store &reference return value
                  EditProposals::get(_ipfs_hash, ReturnedProposal); // eosio::table lookup by new_article_hash
                  return ReturnedProposal;
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

      // EOS table for the articles
      using Wikis = eosio::table<
            N(article), // scope
            N(article), // code (contract w/ write permission)
            N(wikis),      // table name
            wiki,         // data type (schema)
            ipfshash_t>;    // primary key data type

      // EOS table for the edit proposals
      using EditProposals = eosio::table<
            N(article), // scope
            N(article), // code (contract w/ write permission)
            N(editproposals),      // table name
            editproposal,         // data type (schema)
            ipfshash_t>;     // primary key data type

      // EOS table for the votes
      using Votes = eosio::table<
            N(article), // scope
            N(article), // code (contract w/ write permission)
            N(votes),      // table name
            vote,         // data type (schema)
            ipfshash_t>;    // primary key data type

      //  ====================================================================================================
      //  ====================================================================================================
      //  ====================================================================================================
      // ABI Functions
      void submit_proposal( const editproposal& _editprop ); // submit proposal
      void place_vote ( const vote& _vote ); // vote on a proposal
      void finalize_proposal( const editproposal& _editprop ); // finalize proposal
}
