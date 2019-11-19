#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace article {
      const int DEFAULT_VOTING_TIME = 28800;
      using ipfshash_t = unsigned char[34];

      // DB Table Schemas
      struct wiki {
            ipfshash_t hash; // IPFS hash of the current consensus article version
            ipfshash_t parent_hash; // IPFS hash of the parent article version
            wiki() {}

            static wiki get_by_hash(const ipfshash_t& _ipfs_hash){
                  wiki ReturnedWiki = new wiki(); // need variable to store &reference return value
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
            uint64 timestamp; // epoch time of the proposal
            uint8 status; // 0 = pending, 1 = accepted, 2 = rejected

            editproposal() {}

            //THESE TABLE LOOKUPS ARE LIKELY SYNTAX MALFORMED
            static editproposal get_by_hash(const ipfshash_t& _ipfs_hash){
                  editproposal ReturnedProposal = new editproposal(); // need variable to store &reference return value
                  EditProposals::get(_ipfs_hash, ReturnedProposal); // eosio::table lookup by new_article_hash
                  return ReturnedProposal;
            }

      };

      // Voting tally
      struct vote {
            ipfshash_t proposed_article_hash; // IPFS hash of the proposed new version
            uint64 votevalue; // positive or negative value indicating the vote / staked amount
            account_name voter; // account name of the voter
            uint64 timestamp; // epoch time of the vote

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
