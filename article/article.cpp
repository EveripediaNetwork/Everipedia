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
          EditProposals::store(_editprop); // store the proposal
          this.iq_wallet.stake(_editprop, MINIMUM_EDIT_IQ) // stake MINIMUM_EDIT_IQ on this edit
    }

    // vote on a proposal
    void place_vote ( const vote& _vote  ){
           editproposal _editprop = article::editproposal::get_by_hash( _vote.proposed_article_hash)

            // some of this is very-much still pseudocode
            bool stillVoting =  now.time_since_epoch() < (_editprop.timestamp + article::DEFAULT_VOTING_TIME); // 8 hr voting window. Replace as required.
            eosio_assert(stillVoting, "Voting period is over!");

            // check for enough IQ to edit
            bool hasEnoughIQ =  this.iq_wallet.balance > 0; // 8 hr voting window. Replace as required.
            eosio_assert(hasEnoughIQ, "Not enough IQ to place a vote!");

            //construct a new vote
            vote voteInstance = {_editprop.hash, _vote.votevalue, this.account_name, now.time_since_epoch() };
            this.iq_wallet.stake(voteInstance, _vote.votevalue) // stake MINIMUM_EDIT_IQ on this edit
            Votes::store(voteInstance);
    }

    // finalize proposal
    void finalize_proposal( editproposal& _editprop ) {
          // some of this is very-much still pseudocode
          bool votingPeriodOver =  now.time_since_epoch() > (_editprop.timestamp +  article::DEFAULT_VOTING_TIME); // 8 hr voting window. Replace as required.
          eosio_assert(votingPeriodOver, "Voting period is not over yet!");

          // do a table lookup for all the votes PSEUDOCODE
          std::vector<vote> voteVector = Votes::filter(editproposal.proposed_article_hash); // get all the votes for a given edit proposal_id
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
               editproposal.status = 1;
               EditProposals::update(editproposal);

                // set the current hash of the wiki to the proposal's hash
                wiki wikiInstance = article::wiki::get_by_hash(editproposal.proposed_article_hash);
                wikiInstance.hash = editproposal.proposed_article_hash;
                Wikis::update(wikiInstance);

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
                editproposal.status = 2;
                EditProposals::update(editproposal);

          }
          else{
                editproposal.timestamp +=  article::DEFAULT_VOTING_TIME; // extend the voting window if there is a tie.
                EditProposals::update(editproposal);
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
