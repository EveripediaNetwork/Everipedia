// CURRENTLY DOES NOT COMPILE
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


#include "article.hpp"
#include <chrono>

namespace article {
    using namespace eosio;

    // TODO: this.iq_wallet and related terms need to be replaced with the correct token function calls.

    // submit a proposal
    void submit_proposal ( editproposal& _editprop  ){
          // check for new users
          if (article::is_new_user(this.account_name)){
                ARTICLE_CONTRACT.iq_wallet.transfer(this, MINIMUM_EDIT_IQ); // if there is a brand new user, give them free IQ to make their first edit
          }
          eosio_assert(this.iq_wallet.balance < MINIMUM_EDIT_IQ, "Not enough IQ to edit!"); // make sure there is enough IQ to make an edit

          // store the proposal
          EditProposals.emplace( ARTICLE_CONTRACT, [&]( auto& a ) {
                  a.proposed_article_hash = _editprop.proposed_article_hash;
                  a.edit_diff_hash = _editprop.edit_diff_hash;
                  a.old_article_hash = _editprop.old_article_hash;
                  a.proposer = _editprop.proposer;
                  a.timestamp = _editprop.timestamp;
                  a.status = _editprop.status;
            });

          this.iq_wallet.stake(_editprop, MINIMUM_EDIT_IQ) // stake MINIMUM_EDIT_IQ on this edit
    }

    // vote on a proposal
    void place_vote ( const vote& _vote  ){
           editproposal _editprop = article::editproposal::get_by_hash( _vote.proposed_article_hash)

            // some of this is very-much still pseudocode
            bool stillVoting =  now.time_since_epoch() < (_editprop.timestamp + article::DEFAULT_VOTING_TIME); // 8 hr voting window. Replace as required.
            eosio_assert(stillVoting, "Voting period is over!");

            // check for enough IQ to edit
            eosio_assert(this.iq_wallet.balance > MINIMUM_EDIT_IQ, "Not enough IQ to place a vote!");

            //construct a new vote
            vote voteInstance = {_editprop.hash, _vote.votevalue, this.account_name, now.time_since_epoch() };
            this.iq_wallet.stake(voteInstance, _vote.votevalue) // stake MINIMUM_EDIT_IQ on this edit

            // store the vote
           Votes.emplace( ARTICLE_CONTRACT, [&]( auto& a ) {
                   a.proposed_article_hash = voteInstance.proposed_article_hash;
                   a.votevalue = voteInstance.votevalue;
                   a.voter = voteInstance.voter;
                   a.timestamp = voteInstance.timestamp;
             });

    }

    // finalize proposal
    void finalize_proposal( editproposal& _editprop ) {
          // some of this is very-much still pseudocode
          eosio_assert(now.time_since_epoch() > (_editprop.timestamp +  article::DEFAULT_VOTING_TIME), "Voting period is not over yet!"); // 8 hr voting window. Replace as required.

          // do a table lookup for all the votes PSEUDOCODE
          std::vector<vote> voteVector = Votes::filter(editproposal.proposed_article_hash); // get all the votes for a given edit proposal_id

          // TODO: JUST DO A FIND, THEN itr++, THEN FIND AGAIN FOR A RANGE
          // static editproposal get_by_hash(const ipfshash_t& _ipfs_hash){
          //       auto toitr = EditProposals.find( _ipfs_hash );
          //       if( toitr != EditProposals.end() ) {
          //             return *toitr;
          //       }
          // }

          std::vector<vote> proVotes = {};
          std::vector<vote> antiVotes = {};

          uint64_t voteTally = 0;
          for(unsigned int i = 0; i < voteVector.size(); i++)
          {
                // tally the votes
                uint64_t voteVal = voteVector[i].votevalue;
                voteTally += voteVal;

                // separate the pro and anti votes
                if(voteVal > 0){
                      proVotes.push_back(voteVector[i]);
                }
                else{
                      antiVotes.push_back(voteVector[i]);
                }
          }

          if (voteTally > 0){
                 // reward the proVotes
                 for(unsigned int i = 0; i < proVotes.size(); i++){
                       // TODO: unstaking & reward code
                 }

                 // punish the antiVotes
                 for(unsigned int i = 0; i < antiVotes.size(); i++){
                      // TODO: unstaking & punishment code
                 }

                // mark the proposal as accepted
               auto propItr = EditProposals.find( editproposal );
               EditProposals.modify( propItr, 0, [&]( auto& a ) {
                     a.status +=  1;
               });


                // set the current hash of the wiki to the proposal's hash
                wiki wikiInstance = article::wiki::get_by_hash(editproposal.proposed_article_hash);
                auto wikiItr = Wikis.find( wikiInstance );
                Wikis.modify( wikiItr, 0, [&]( auto& a ) {
                      a.hash = wikiInstance.proposed_article_hash;
                });


          }
          elif (voteTally < 0){
                // reward the antiVotes
                for(unsigned int i = 0; i < antiVotes.size(); i++){
                      // TODO: unstaking & reward code
                }

                // punish the proVotes
                for(unsigned int i = 0; i < proVotes.size(); i++){
                      // TODO: unstaking & punishment code
                }

                // mark the proposal as rejected
                auto propItr = EditProposals.find( editproposal );
                EditProposals.modify( propItr, 0, [&]( auto& a ) {
                      a.status +=  2;
                });

          }
          else{
                auto propItr = EditProposals.find( editproposal );
                EditProposals.modify( propItr, 0, [&]( auto& a ) {
                      a.timestamp +=  article::DEFAULT_VOTING_TIME; // extend the voting window if there is a tie.
                });
          }


    }

}

using namespace article;

extern "C" {
    void init()  {}

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t code, uint64_t action ) {
        if( code == N(everipedia.article) ) {
            if( action == N(edit) ) {
                apply_article_edit(current_message<Edit>());
            }
        }
    }
}
