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

#include <eosiolib/asset.hpp>
#include "eparticle.hpp"
#include "../eosio.token/eosio.token.hpp"
#include <typeinfo>

bool eparticle::isnewuser (const account_name& _thisaccount){
    return true;
}

uint64_t eparticle::getiqbalance( account_name from ) {
    // Create the account object
    eparticle::accounts accountstable( N(eosio.token), from );

    // Get the iterator to the account
    auto iqAccount_iter = accountstable.find(IQSYMBOL.name());

    // Check for an account
    if(iqAccount_iter != accountstable.end()){
        return iqAccount_iter->balance.amount;
    }
    else{
        return 0;
    }
}

uint64_t eparticle::swapEndian64(uint64_t X) {
    uint64_t x = (uint64_t) X;
    x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
    x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
    x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
    return x;
}


void eparticle::brainme( account_name staker, uint64_t amount) {
    require_auth(staker);
    uint64_t newBrainpower = amount * IQ_TO_BRAINPOWER_RATIO;

    // Check that there is enough IQ available to stake to brainpower
    uint64_t oldIQBalance = getiqbalance(staker);
    eosio_assert(oldIQBalance > 0, "Not enough IQ available to convert to brainpower");

    // Transfer IQ to the eparticle contract
    asset iqAssetPack = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    action(permission_level{ staker, N(active) }, N(eosio.token), N(transfer), std::make_tuple(staker,
            N(eparticle), iqAssetPack, std::string(""))).send();

    // Get the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(staker);
    uint64_t name64t = staker;

    if(brain_it == braintable.end()){
      braintable.emplace( staker, [&]( auto& b ) {
          b.user = staker;
          b.user_64t = eparticle::swapEndian64(staker);
          b.power = newBrainpower;
      });
    }
    else {
      braintable.modify( brain_it, 0, [&]( auto& b ) {
          b.add(newBrainpower);
      });
    }

    staketbl staketblobj(_self, _self);
    staketblobj.emplace( staker, [&]( auto& s ) {
        s.id = staketblobj.available_primary_key();
        s.user = staker;
        s.user_64t = eparticle::swapEndian64(staker);
        s.amount = amount;
        s.timestamp = now();
        s.completion_time = now() + STAKING_DURATION;
    });
}

void eparticle::brainclaim( account_name claimant, uint64_t amount) {
    // Get the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(claimant);

    // Get the stakes
    staketbl staketable(_self, _self);
    auto stakeidx = staketable.get_index<N(byuser)>();
    auto stake_it = stakeidx.find(claimant);
    eosio_assert( stake_it != stakeidx.end(), "No stakes found for proposal");

    // Dummy initialization
    asset iqAssetPack;

    // Loop through the stakes
    while(stake_it != stakeidx.end() && stake_it->user == claimant) {
        // Get the age of the stake
        time timeDiff = now() - stake_it->timestamp;

        // See if the stake is over 21 days old
        if (timeDiff > STAKING_DURATION){
            // Transfer back the IQ
            iqAssetPack = asset(stake_it->amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
            action(permission_level{ N(eparticle), N(active) }, N(eosio.token), N(transfer), std::make_tuple(N(eparticle),
                    claimant, iqAssetPack, std::string(""))).send();

            // Delete the stake.
            // Note that the erase() function increments the iterator, then gives it back after the erase is done
            stake_it = stakeidx.erase(stake_it);
        }
        else{
            stake_it++;
        }
    }
}

void eparticle::brainclmid( account_name claimant, uint64_t stakeid) {
    // Get the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(claimant);

    // Get the stakes
    staketbl staketable(_self, _self);
    auto stake_it = staketable.find(stakeid);
    eosio_assert( stake_it != staketable.end(), "No stakes found for proposal");

    // Dummy initialization
    asset iqAssetPack;

    // See if the stake is over 21 days old
    eosio_assert( now() > stake_it->completion_time, "Staking period not over yet");

    // Transfer back the IQ
    iqAssetPack = asset(stake_it->amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    action(permission_level{ N(eparticle), N(active) }, N(eosio.token), N(transfer), std::make_tuple(N(eparticle),
            claimant, iqAssetPack, std::string(""))).send();

    // Delete the stake.
    // Note that the erase() function increments the iterator, then gives it back after the erase is done
    stake_it = staketable.erase(stake_it);
}

void eparticle::propose_precheck( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash ) {
    // Fetch the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(proposer);

    // Re-check that enough brainpower is available
    eosio_assert(brain_it->power > EDIT_PROPOSE_BRAINPOWER, "Not enough brainpower to edit, you need to stake some more IQ using brainme first!");
}

void eparticle::propose( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash ) {
    // Check to make sure enough brainpower is present
    eparticle::propose_precheck(proposer, proposed_article_hash, old_article_hash);

    // Check for a duplicate proposal
    propstbl proptable( _self, _self );
    auto propidx = proptable.get_index<N(byhash)>();
    auto prop_it = propidx.find(eparticle::ipfs_to_key256(proposed_article_hash));
    eosio_assert(prop_it == propidx.end(), "Proposal already exists");

    // Store the proposal
    uint64_t propPrimaryKey = ipfs_to_uint64_trunc(proposed_article_hash);
    proptable.emplace( _self, [&]( auto& a ) {
        a.id = propPrimaryKey; // TODO: need to remove this later, or account for uniqueness
        a.proposed_article_hash = proposed_article_hash;
        a.old_article_hash = old_article_hash;
        a.proposer = proposer;
        a.proposer_64t = eparticle::swapEndian64(proposer);
        a.timestamp = now();
        a.votingduration = DEFAULT_VOTING_TIME;
        a.status = ProposalStatus::pending;
    });

    // Place the vote
    eparticle::votebyhash( proposer, proposed_article_hash, true, EDIT_PROPOSE_BRAINPOWER );
}

void eparticle::votebyhash ( account_name voter, ipfshash_t& proposed_article_hash, bool approve, uint64_t amount ) {
    // Check if article exists
    propstbl proptable( _self, _self );
    auto prop_idx = proptable.get_index<N(byhash)>();
    auto prop_it = prop_idx.find(eparticle::ipfs_to_key256(proposed_article_hash));
    eosio_assert( prop_it != prop_idx.end(), "proposal not found" );
    uint64_t proposal_id = prop_it->id;

    // Verify voting is still in progress
    eosio_assert( now() < prop_it->timestamp + DEFAULT_VOTING_TIME, "voting period is over");

    // Consume brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(voter);
    eosio_assert(brain_it->power >= amount, "Not enough brainpower");
    braintable.modify( brain_it, 0, [&]( auto& b ) {
        b.sub(amount);
    });

    // Store vote in DB
    votestbl votetbl( _self, _self );
    auto voteidx = votetbl.get_index<N(byhash)>();
    auto vote_it = voteidx.find(eparticle::ipfs_to_key256(proposed_article_hash));
    uint64_t votePrimaryKey = votetbl.available_primary_key();

    if(vote_it == voteidx.end()){
        // First vote for proposal
        print("FIRST VOTE FOR PROPOSAL", "\n");
        votetbl.emplace( voter, [&]( auto& a ) {
             a.id = votePrimaryKey;
             a.proposal_id = proposal_id;
             a.proposed_article_hash = proposed_article_hash;
             a.approve = approve;
             a.amount = amount;
             a.voter = voter;
             a.voter_64t = eparticle::swapEndian64(voter);
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
                 a.amount = amount;
                 a.voter = voter;
                 a.voter_64t = eparticle::swapEndian64(voter);
                 a.timestamp = now();
            });
        }
    }
}

void eparticle::votebyid ( account_name voter, uint64_t proposal_id, bool approve, uint64_t amount ) {
    // Check if article exists
    propstbl proptable( _self, _self );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "proposal not found" );
    ipfshash_t thePropHash = prop_it->proposed_article_hash;

    eparticle::votebyhash(voter, thePropHash, approve, amount);
}

void eparticle::finalizebyhash( account_name from, ipfshash_t& proposal_hash ) {
    // Add article to database, or update
    propstbl proptable( _self, _self );
    auto propidx = proptable.get_index<N(byhash)>();
    auto prop_it = propidx.find(eparticle::ipfs_to_key256(proposal_hash));
    eosio_assert( prop_it != propidx.end(), "proposal not found" );
    eparticle::finalize(from, prop_it->id);
}

void eparticle::finalize( account_name from, uint64_t proposal_id ) {
    // Verify proposal exists
    propstbl proptable( _self, _self );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "proposal not found" );

    // Verify voting period is complete
    eosio_assert( now() > prop_it->timestamp + DEFAULT_VOTING_TIME, "voting period is over");

    // Retrieve votes from DB
    votestbl votetable(_self, _self);
    auto voteidx = votetable.get_index<N(byproposal)>();
    auto vote_it = voteidx.find( std::forward<uint64_t>(proposal_id) );
    eosio_assert( vote_it != voteidx.end(), "no votes found for proposal");

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

    // Determine slashing conditions
    // floating point is inexact, so I'm using integer arithmetic for slashing percentages
    vote_it = voteidx.find( std::forward<uint64_t>(proposal_id) );
    bool approved = (for_votes > against_votes);
    uint64_t slash_percent;
    if (approved)
        slash_percent = for_votes - against_votes;
    else
        slash_percent = against_votes - for_votes;


    while(vote_it->proposal_id == proposal_id) {
        if (vote_it->approve != approved) {
            // Slash losers
            uint64_t slash_amount = vote_it->amount;
            uint64_t runningTally = vote_it->amount;

            // Get the stakes
            staketbl staketable(_self, _self);
            auto stakeidx = staketable.get_index<N(byuser)>();
            auto stake_it = stakeidx.find(vote_it->voter);

            while(stake_it->user == vote_it->voter) {
                if(stake_it->amount >= runningTally){
                    stakeidx.modify( stake_it, 0, [&]( auto& a ) {
                        a.completion_time += STAKING_DURATION * slash_percent / 100;
                        a.timestamp = now();
                        runningTally -= stake_it->amount;
                    });
                }
                else{
                    // The slash amount does not fill a full stake, so the stake needs to be split
                    uint64_t newAmount = stake_it->amount - runningTally;
                    uint32_t oldTimestamp = stake_it->timestamp;
                    uint32_t oldCompletionTime = stake_it->completion_time;

                    stakeidx.modify( stake_it, 0, [&]( auto& a ) {
                        a.completion_time += STAKING_DURATION * slash_percent / 100;
                        a.amount = runningTally;
                    });
                    staketable.emplace( vote_it->voter,  [&]( auto& a ) {
                        a.id = staketable.available_primary_key();
                        a.user = vote_it->voter;
                        a.user_64t = eparticle::swapEndian64(vote_it->voter);
                        a.amount = newAmount;
                        a.timestamp = oldTimestamp;
                        a.completion_time = oldCompletionTime;
                    });
                    break;
                }

                stake_it++;
            }

        }
        else{
            // TODO: Reward the winners
        }
        vote_it++;
    }

    // Add article to database, or update
    wikistbl wikitbl( _self, _self );
    auto wikiidx = wikitbl.get_index<N(byhash)>();
    auto wiki_it = wikiidx.find(eparticle::ipfs_to_key256(prop_it->old_article_hash));

    if (wiki_it == wikiidx.end()){
        wikitbl.emplace( _self,  [&]( auto& a ) {
            a.id = wikitbl.available_primary_key();
            a.hash = prop_it->proposed_article_hash;
            a.parent_hash = prop_it->old_article_hash;
        });
    }
    else{
        wikiidx.modify( wiki_it, 0, [&]( auto& a ) {
            a.hash = prop_it->proposed_article_hash;
            a.parent_hash = prop_it->old_article_hash;
        });
    }


}


void eparticle::testinsert( ipfshash_t inputhash ) {
    print("CLEOS");
    uint64_t hashNumber = ipfs_to_uint64_trunc(inputhash);


    // testtbl testtable(_self, _self);
    // testtable.emplace( _self, [&]( auto& b ) {
    //     b.id = hashNumber;
    // });
}

EOSIO_ABI( eparticle, (brainme)(brainclaim)(brainclmid)(finalize)(propose)(votebyhash)(testinsert) )
