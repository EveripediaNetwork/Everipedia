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

#include <eosiolib/asset.hpp>
#include "eparticlectr.hpp"
#include <typeinfo>


// Stake IQ in exchange for brainpower
// Note that the "amount" parameter is in full precision. Dividing it by IQ_PRECISION_MULTIPLIER would give the "clean" amount with a decimal.
void eparticlectr::brainmeart( account_name staker, uint64_t amount ) {
    // The token contract has eosio.code permission for the article contract
    require_auth(ARTICLE_CONTRACT_ACCTNAME);

    uint64_t newBrainpower = amount * IQ_TO_BRAINPOWER_RATIO;

    // Get the brainpower
    brainpwrtbl braintable(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    auto brain_it = braintable.find(staker);

    // Add the brainpower, creating a new table entry if the staker has never staked before
    if(brain_it == braintable.end()){
      braintable.emplace( ARTICLE_CONTRACT_ACCTNAME, [&]( auto& b ) {
          b.user = staker;
          b.power = newBrainpower;
      });
    }
    else {
      braintable.modify( brain_it, 0, [&]( auto& b ) {
          b.add(newBrainpower);
      });
    }

    // Create the stake object
    staketbl staketblobj(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    staketblobj.emplace( ARTICLE_CONTRACT_ACCTNAME, [&]( auto& s ) {
        s.id = staketblobj.available_primary_key();
        s.user = staker;
        s.amount = amount;
        s.timestamp = now();
        s.completion_time = now() + STAKING_DURATION;
    });
}

// Place a vote using the IPFS hash
void eparticlectr::votebyhash ( account_name voter, ipfshash_t& proposed_article_hash, bool approve, uint64_t amount ) {
    require_auth(voter);

    // Check if article exists
    propstbl proptable( _self, _self );
    auto prop_idx = proptable.get_index<N(byhash)>();
    auto prop_it = prop_idx.find(eparticlectr::ipfs_to_key256(proposed_article_hash));
    eosio_assert( prop_it != prop_idx.end(), "proposal not found" );
    uint64_t proposal_id = prop_it->id;

    bool voterIsProposer = (voter == prop_it->proposer);

    // Verify voting is still in progress
    eosio_assert( now() < prop_it->endtime, "voting period is over");

    // Get the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(voter);

    // Consume brainpower
    eosio_assert(brain_it->power >= amount, "Not enough brainpower");
    braintable.modify( brain_it, 0, [&]( auto& b ) {
        b.sub(amount);
    });

    // Store vote in DB
    votestbl votetbl( _self, _self );
    auto voteidx = votetbl.get_index<N(byhash)>();
    auto vote_it = voteidx.find(eparticlectr::ipfs_to_key256(proposed_article_hash));
    uint64_t votePrimaryKey = votetbl.available_primary_key();

    if(vote_it == voteidx.end()){
        // First vote for proposal
        print("FIRST VOTE FOR PROPOSAL", "\n");
        votetbl.emplace( voter, [&]( auto& a ) {
             a.id = votePrimaryKey;
             a.proposal_id = proposal_id;
             a.proposed_article_hash = proposed_article_hash;
             a.approve = approve;
             a.is_editor = voterIsProposer;
             a.amount = amount;
             a.voter = voter;
             a.timestamp = now();
        });
    }
    else{
        while(vote_it != voteidx.end()) {
            if(vote_it->proposal_id == proposal_id && vote_it->voter == voter){
                print("PROPOSAL AND VOTER MATCH FOUND", "\n");
                if(vote_it->approve == approve){
                    // Strengthen existing vote
                    print("STRENGTHEN EXISTING VOTE", "\n");
                    voteidx.modify( vote_it, 0, [&]( auto& a ) {
                        a.amount += amount;
                        a.timestamp = now();
                    });
                    break;
                }
                else {
                    if(vote_it->amount >= amount){
                        // Weakening existing vote
                        print("WEAKEN EXISTING VOTE", "\n");
                        voteidx.modify( vote_it, 0, [&]( auto& a ) {
                            a.amount = vote_it->amount - amount;
                            a.timestamp = now();
                        });
                        break;
                    }
                    else{
                        // Switch votes
                        print("SWITCH VOTE", "\n");
                        voteidx.modify( vote_it, 0, [&]( auto& a ) {
                            a.amount = amount - vote_it->amount;
                            a.approve = approve;
                            a.timestamp = now();
                        });
                        break;
                    }
                }

            }
            vote_it++;
        }
        if(vote_it == voteidx.end()){
            // Brand new vote
            print("BRAND NEW VOTE", "\n");
            votetbl.emplace( voter, [&]( auto& a ) {
                 a.id = votePrimaryKey;
                 a.proposal_id = proposal_id;
                 a.proposed_article_hash = proposed_article_hash;
                 a.approve = approve;
                 a.is_editor = voterIsProposer;
                 a.amount = amount;
                 a.voter = voter;
                 a.timestamp = now();
            });
        }
    }
}

void eparticlectr::updatewiki( ipfshash_t& current_hash ){
    // Manually update the wikistbl. This will be removed later.
    require_auth(ARTICLE_CONTRACT_ACCTNAME);

    print("ADDING ARTICLE TO DATABASE\n");
    wikistbl wikitbl( _self, _self );
    auto wikiidx = wikitbl.get_index<N(byhash)>();
    auto wiki_it = wikiidx.find(eparticlectr::ipfs_to_key256(current_hash));
    eosio_assert(wiki_it == wikiidx.end(), "wiki already exists in database");

    wikitbl.emplace( _self,  [&]( auto& a ) {
        a.id = wikitbl.available_primary_key();
        a.hash = current_hash;
        a.parent_hash = "";
    });
}

// Propose an edit for an article
void eparticlectr::propose( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash, ipfshash_t& grandparent_hash ) {
    require_auth(proposer);

    // Temporary check: Only new wikis are allowed
    eosio_assert(old_article_hash == "", "Only new wikis are currently permitted");
    eosio_assert(grandparent_hash == "", "Only new wikis are currently permitted");

    // Fetch the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(proposer);
    eosio_assert( brain_it != braintable.end(), "No brainpower found");

    // Re-check that enough brainpower is available
    eosio_assert(brain_it->power > EDIT_PROPOSE_BRAINPOWER, "Not enough brainpower to edit, you need to stake some more IQ using everipediaiq::brainmeiq first!");

    // Check for a duplicate proposal
    propstbl proptable( _self, _self );
    auto propidx = proptable.get_index<N(byhash)>();
    auto prop_it = propidx.find(eparticlectr::ipfs_to_key256(proposed_article_hash));
    eosio_assert(prop_it == propidx.end(), "Proposal already exists");

    // Store the proposal
    // uint64_t propPrimaryKey = ipfs_to_uint64_trunc(proposed_article_hash);
    proptable.emplace( _self, [&]( auto& a ) {
        a.id = proptable.available_primary_key(); // TODO: Change this once client-side secondary index querying is available
        a.proposed_article_hash = proposed_article_hash;
        a.old_article_hash = old_article_hash;
        a.grandparent_hash = grandparent_hash;
        a.proposer = proposer;
        a.starttime = now();
        a.endtime = now() + DEFAULT_VOTING_TIME;
        a.status = ProposalStatus::pending;
    });

    // Place the default vote
    eparticlectr::votebyhash( proposer, proposed_article_hash, true, EDIT_PROPOSE_BRAINPOWER );
}

void eparticlectr::fnlbyhash( ipfshash_t& proposal_hash ) {
    // Add article to database, or update
    propstbl proptable( _self, _self );
    auto propidx = proptable.get_index<N(byhash)>();
    auto prop_it = propidx.find(eparticlectr::ipfs_to_key256(proposal_hash));
    eosio_assert( prop_it != propidx.end(), "proposal not found" );
    print(prop_it->id);
    eparticlectr::finalize(prop_it->id);
}

void eparticlectr::finalize( uint64_t proposal_id ) {
    // Verify proposal exists
    propstbl proptable( _self, _self );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "proposal not found" );

    // Verify voting period is complete
    eosio_assert( now() > prop_it->endtime, "voting period is not over yet");

    // Retrieve votes from DB
    votestbl votetbl( _self, _self );
    auto voteidx = votetbl.get_index<N(byhash)>();
    auto vote_it = voteidx.find(eparticlectr::ipfs_to_key256(prop_it->proposed_article_hash));
    eosio_assert( vote_it != voteidx.end(), "no votes found for proposal");

    print("TALLYING VOTES\n");
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

    // Determine approval
    vote_it = voteidx.find(eparticlectr::ipfs_to_key256(prop_it->proposed_article_hash));
    bool approved = false;
    uint64_t totalVotes = for_votes + against_votes;
    double approval_percent = for_votes / (double)totalVotes;
    if (approval_percent >= TIER_ONE_THRESHOLD){
        approved = true;
    }

    print("MARKING PROPOSALS\n");
    // Mark proposal as accepted or rejected. Ties are rejected
    uint32_t tier = 1;
    uint32_t finalTime = now();
    proptable.modify( prop_it, 0, [&]( auto& a ) {
        if (approved) {
            a.status =  ProposalStatus::accepted;
            a.tier = tier;
            a.finalized_time = finalTime;
        }
        else{
            a.status =  ProposalStatus::rejected;
            a.tier = 0;
            a.finalized_time = finalTime;
        }

    });

    if (approved){
        // Add article to database, or update
        print("ADDING ARTICLE TO DATABASE\n");
        wikistbl wikitbl( _self, _self );

        wikitbl.emplace( _self,  [&]( auto& a ) {
            a.id = wikitbl.available_primary_key();
            a.hash = prop_it->proposed_article_hash;
            a.parent_hash = prop_it->old_article_hash;
        });
    }
    else{
        // Reverts back to parent as current_hash and grandparent as parent_hash
    }

}


EOSIO_ABI( eparticlectr, (brainmeart)(finalize)(fnlbyhash)(propose)(updatewiki)(votebyhash) )
