#include "article.hpp"
#include <epiq/epiq.hpp>
#include <chrono>

namespace article {
    using namespace eosio;

    // submit a proposal
    void submit_proposal ( editproposal& _editprop  ){
           EditProposals::store(_editprop);
    }

    // vote on a proposal
    void place_vote ( const vote& _vote  ){
           editproposal _editprop = article::editproposal::get_by_hash( _vote.proposed_article_hash)

            // some of this is very-much still pseudocode
            bool stillVoting =  now.time_since_epoch() < (_editprop.timestamp + article::DEFAULT_VOTING_TIME); // 8 hr voting window. Replace as required.
            eosio_assert(stillVoting, "Voting period is over!");

            bool hasEnoughIQ =  this.account_name.IQ_balance > 0; // 8 hr voting window. Replace as required.
            eosio_assert(hasEnoughIQ, "Not enough IQ to place a vote!");

            //construct a new vote
            vote voteInstance = {_editprop.hash, _vote.votevalue, this.account_name, now.time_since_epoch() };
            Votes::store(voteInstance);
    }

    // finalize proposal
    void finalize_proposal( editproposal& _editprop ) {
          // some of this is very-much still pseudocode
          bool votingPeriodOver =  now.time_since_epoch() > (_editprop.timestamp +  article::DEFAULT_VOTING_TIME); // 8 hr voting window. Replace as required.
          eosio_assert(votingPeriodOver, "Voting period is not over yet!");

          // do a table lookup for all the votes PSEUDOCODE
          std::vector<vote> voteVector = Votes::filter(editproposal.proposed_article_hash); //basically, get all the votes for a given edit proposal_id
          int voteTally = 0;
          for(unsigned int i = 0; i < voteVector.size(); i++)
          {
                voteTally += voteVector[i];
          }

          if (voteTally > 0){
                // give out the token rewards

                // mark the proposal as accepted
               editproposal.status = 1;
               EditProposals::update(editproposal);

                // set the current hash of the wiki to the proposal's hash
                wiki wikiInstance = article::wiki::get_by_hash(editproposal.proposed_article_hash);
                wikiInstance.hash = editproposal.proposed_article_hash;
                Wikis::update(wikiInstance);

          }
          elif (voteTally < 0){
                // burn the tokens

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
