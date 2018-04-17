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


#include "article.hpp"

bool article::is_new_user (const account_name& _thisaccount){
    return true;
}


void article::submit_proposal( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash ) { 
    
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





void article::place_vote ( account_name voter, uint64_t proposal_id, bool approve, uint64_t amount ) {
    
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
         a.approve = approve;
         a.amount = amount;
         a.voter = voter;
         a.timestamp = now;
    });

}




void article::finalize_proposal( account_name from, uint64_t proposal_id ) {
    
    // Verify proposal exists
    edit_proposals_table proptable( _self, _self );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "proposal not found" );

    // Verify voting period is complete
    using chrono = std::chrono::system_clock;
    std::time_t now = chrono::to_time_t(chrono::now());
    eosio_assert( now > prop_it->timestamp + DEFAULT_VOTING_TIME, "voting period is over");

    // Retrieve votes from DB
    votes_table votetable(_self, _self);
    auto propidx = votetable.get_index<N(byproposal)>();
    auto vote_it = propidx.find( std::forward<uint64_t>(proposal_id) );
    eosio_assert( vote_it != propidx.end(), "no votes found for proposal");


    // Tally votes
    uint64_t for_votes = 0;
    uint64_t against_votes = 0;
    while(vote_it->proposal_id == proposal_id) {
        if (vote_it->approve)
            for_votes += vote_it->amount;
        else
            against_votes += vote_it->amount;
        vote_it++;  
    }

    // Mark proposal as accepted or rejected. Ties are rejected
    proptable.modify( prop_it, 0, [&]( auto& a ) {
        if (for_votes > against_votes)
            a.status =  ProposalStatus::accepted;
        else
            a.status =  ProposalStatus::rejected;
    });

    // TODO: Reward the voters

    // Add article to database
    wikis_table wikitbl( _self, _self );
    wikitbl.emplace( _self,  [&]( auto& a ) {
        // TODO: incrementing ID
        a.hash = prop_it->proposed_article_hash;
        a.parent_hash = prop_it->old_article_hash;
    });
}
