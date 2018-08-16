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

// Redeem IQ, with a specific stake specified
void eparticlectr::brainclmid( account_name claimant, uint64_t stakeid ) {
    require_auth(claimant);

    // Get the brainpower
    brainpwrtbl braintable(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    auto brain_it = braintable.find(claimant);
    eosio_assert( brain_it != braintable.end(), "No brainpower found");

    // Get the stakes
    staketbl staketable(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    auto stake_it = staketable.find(stakeid);
    eosio_assert( stake_it != staketable.end(), "No stakes found for proposal");

    // Dummy initialization
    asset iqAssetPack;

    // Make sure the claimant is the same as the staker
    eosio_assert( claimant == stake_it->user, "Cannot claim another staker's tokens!");

    // See if the stake is over 21 days old
    eosio_assert( now() > stake_it->completion_time, "Staking period not over yet");

    // Transfer back the IQ
    iqAssetPack = asset(int64_t(stake_it->amount * IQ_PRECISION_MULTIPLIER), IQSYMBOL);
    eosio::action theAction = action(permission_level{ ARTICLE_CONTRACT_ACCTNAME, N(active) }, TOKEN_CONTRACT_ACCTNAME, N(transfer),
                    std::make_tuple(ARTICLE_CONTRACT_ACCTNAME, claimant, iqAssetPack, std::string("brainpower refund")));
    theAction.send();

    // Delete the stake.
    // Note that the erase() function increments the iterator, then gives it back after the erase is done
    stake_it = staketable.erase(stake_it);
}

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
      braintable.emplace( _self, [&]( auto& b ) {
          b.user = staker;
          b.power = newBrainpower;
      });
    }
    else {
      braintable.modify( brain_it, _self, [&]( auto& b ) {
          b.add(newBrainpower);
      });
    }

    // Create the stake object
    staketbl staketblobj(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    staketblobj.emplace( _self, [&]( auto& s ) {
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
    eosio_assert( prop_it != prop_idx.end(), "Proposal not found" );
    uint64_t proposal_id = prop_it->id;

    bool voterIsProposer = (voter == prop_it->proposer);

    // Verify voting is still in progress
    eosio_assert( now() < prop_it->endtime, "Voting period is over");

    // Get the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(voter);

    // Consume brainpower
    eosio_assert(brain_it->power >= amount, "Not enough brainpower");
    braintable.modify( brain_it, _self, [&]( auto& b ) {
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
        votetbl.emplace( _self, [&]( auto& a ) {
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
                    voteidx.modify( vote_it, _self, [&]( auto& a ) {
                        a.amount += amount;
                        a.timestamp = now();
                    });
                    break;
                }
                else {
                    if(vote_it->amount >= amount){
                        // Weakening existing vote
                        print("WEAKEN EXISTING VOTE", "\n");
                        voteidx.modify( vote_it, _self, [&]( auto& a ) {
                            a.amount = vote_it->amount - amount;
                            a.timestamp = now();
                        });
                        break;
                    }
                    else{
                        // Switch votes
                        print("SWITCH VOTE", "\n");
                        voteidx.modify( vote_it, _self, [&]( auto& a ) {
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
            votetbl.emplace( _self, [&]( auto& a ) {
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
    eosio_assert(brain_it->power >= EDIT_PROPOSE_BRAINPOWER, "Not enough brainpower to edit, you need to stake some more IQ using everipediaiq::brainmeiq first!");

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
    eosio_assert( prop_it != propidx.end(), "Proposal not found" );
    // print(prop_it->id);
    eparticlectr::finalize(prop_it->id);
}

void eparticlectr::finalize( uint64_t proposal_id ) {
    // Verify proposal exists
    propstbl proptable( _self, _self );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "Proposal not found" );

    // Verify proposal has not been finalized already
    eosio_assert( prop_it->finalized_time == 0, "Proposal already finalized");

    // Verify voting period is complete
    eosio_assert( now() > prop_it->endtime, "Voting period is not over yet");

    // Retrieve votes from DB
    votestbl votetbl( _self, _self );
    auto voteidx = votetbl.get_index<N(byhash)>();
    auto vote_it = voteidx.find(eparticlectr::ipfs_to_key256(prop_it->proposed_article_hash));
    eosio_assert( vote_it != voteidx.end(), "No votes found for proposal");

    // Tally votes
    uint64_t for_votes = 0;
    uint64_t against_votes = 0;
    while(vote_it->proposal_id == proposal_id && vote_it != voteidx.end()) {
        if (vote_it->approve)
            for_votes += vote_it->amount;
        else
            against_votes += vote_it->amount;
        vote_it++;
    }

    // print("CHECKING SLASHING\n");
    // Determine slashing conditions
    vote_it = voteidx.find(eparticlectr::ipfs_to_key256(prop_it->proposed_article_hash));
    bool approved = 0;
    float totalVotes = for_votes + against_votes;
    if ((for_votes / (float)totalVotes) > TIER_ONE_THRESHOLD){
        approved = 1;
    }
    float slash_ratio = 1.0f;
    if (approved){
        slash_ratio = (for_votes - against_votes) / (float)totalVotes;
    }
    else{
        slash_ratio = (against_votes - for_votes) / (float)totalVotes;
    }

    // Make sure no weird bugs cause the slash reward to under/overflow
    eosio_assert( slash_ratio > 0.0f && slash_ratio <= 1.0f, "Slash ratio out of bounds");

    print("SLASH RATIO IS: ", slash_ratio, "\n");

    // print("MARKING PROPOSALS\n");
    // Mark proposal as accepted or rejected. Ties are rejected
    uint32_t finalTime = now();
    uint64_t currentInterval = finalTime / REWARD_INTERVAL;
    print("Current interval is: ", currentInterval, "\n");
    proptable.modify( prop_it, 0, [&]( auto& a ) {
        if (for_votes > against_votes){
            a.status =  ProposalStatus::accepted;
            a.tier = 1;
            a.finalized_time = finalTime;
        }
        else{
            a.status =  ProposalStatus::rejected;
            a.tier = 1;
            a.finalized_time = finalTime;
        }

    });

    // print("INITIALIZE REWARDS TABLE");
    rewardstbl rewardstable( _self, _self );

    // print("SEEING VOTES\n");
    while(vote_it->proposal_id == proposal_id && vote_it != voteidx.end()) {
        uint64_t change_amount = vote_it->amount;
        if (vote_it->approve != approved) {
            // Slash losers
            // print("SLASHING THE LOSERS\n");
            uint64_t slashRemaining = vote_it->amount;

            // Get the stakes
            // print("GETTING THE STAKES\n");
            staketbl staketable(_self, _self);
            auto stakeidx = staketable.get_index<N(byuser)>();
            auto stake_it = stakeidx.find(vote_it->voter);

            uint32_t extraTimeInt = uint32_t((float)STAKING_DURATION * slash_ratio);

            while(stake_it->user == vote_it->voter && stake_it != stakeidx.end()) {
                if(stake_it->amount <= slashRemaining){
                    stakeidx.modify( stake_it, 0, [&]( auto& a ) {
                        a.completion_time += extraTimeInt;
                        a.timestamp = finalTime;
                        slashRemaining -= stake_it->amount;
                    });
                }
                else{
                    // The slash amount does not fill a full stake, so the stake needs to be split
                    uint64_t newAmount = stake_it->amount - slashRemaining;
                    uint32_t oldTimestamp = stake_it->timestamp;
                    uint32_t oldCompletionTime = stake_it->completion_time;

                    stakeidx.modify( stake_it, 0, [&]( auto& a ) {
                        a.completion_time += extraTimeInt;
                        a.amount = slashRemaining;
                    });
                    if (newAmount > 0){
                      staketable.emplace( _self,  [&]( auto& a ) {
                          a.id = staketable.available_primary_key();
                          a.user = vote_it->voter;
                          a.amount = newAmount;
                          a.timestamp = oldTimestamp;
                          a.completion_time = oldCompletionTime;
                      });
                    }
                    break;
                }
                stake_it++;
            }
        }
        else{
            // TODO: Reward the winners
            // print("REWARDING THE WINNERS\n");

            rewardstable.emplace( _self,  [&]( auto& a ) {
                a.id = rewardstable.available_primary_key();
                a.user = vote_it->voter;
                a.amount = change_amount;
                a.approval_vote_sum = for_votes;
                a.proposal_id = proposal_id;
                a.proposal_finalize_time = finalTime;
                a.proposal_finalize_period = uint32_t((finalTime / REWARD_INTERVAL));
                a.proposalresult = approved;
                a.is_editor = vote_it->is_editor;
                a.rewardtype = 1;
                a.disbursed = 0;
            });
        }
        vote_it++;
    }

    if (approved){
        // Add article to database, or update
        // print("ADDING ARTICLE TO DATABASE\n");
        wikistbl wikitbl( _self, _self );
        auto wikiidx = wikitbl.get_index<N(byhash)>();
        auto wiki_it = wikiidx.find(eparticlectr::ipfs_to_key256(prop_it->old_article_hash));

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
    else{
        // Reverts back to parent as current_hash and grandparent as parent_hash
    }

}

void eparticlectr::procrewards(uint64_t reward_period) {
    // This function needs to be universally callable. A cron job will be api calling this every REWARD_INTERVAL seconds.
    // require_auth(ARTICLE_CONTRACT_ACCTNAME);

    uint64_t currentInterval = now() / REWARD_INTERVAL;
    print("Current interval is: ", currentInterval, "\n");

    // Make sure it is called AFTER the exiting reward period is done, so it isn't premature
    eosio_assert( currentInterval > reward_period, "Reward period is not over yet");

    // get all the rewards in that period
    rewardstbl rewardstable( _self, _self );
    auto rewardsidx = rewardstable.get_index<N(byfinalper)>();
    auto rewards_it = rewardsidx.find(reward_period);
    eosio_assert( rewards_it != rewardsidx.end(), "No rewards found in this period!");

    // Calculate the total rewards amount in a period
    uint64_t curationRewardSum = 0;
    uint64_t editorRewardSum = 0;
    while(rewards_it != rewardsidx.end()) {
        if (rewards_it->rewardtype == 1){
            curationRewardSum += rewards_it->amount;

            if (rewards_it->proposalresult == 1){
                editorRewardSum += rewards_it->amount;
            }
        }
        rewards_it++;
    }
    print("CURATION REWARD DENOMINATOR: ", curationRewardSum, "\n");
    print("EDITOR REWARD DENOMINATOR: ", editorRewardSum, "\n");

    // Reset the rewards loop and start rewarding
    rewards_it = rewardsidx.find(reward_period);

    while(rewards_it->disbursed == 0 && rewards_it != rewardsidx.end()) {
        if (rewards_it->rewardtype == 1){
            uint64_t rewardAmount = 0;

            rewardAmount = uint64_t(((rewards_it->amount) / (double)curationRewardSum) * PERIOD_CURATION_REWARD);

            if (rewards_it->is_editor == 1){
                rewardAmount += uint64_t(((rewards_it->approval_vote_sum) / (double)editorRewardSum) * PERIOD_EDITOR_REWARD);
            }

            // Make sure no weird bugs cause the reward amount to be larger than the period reward
            eosio_assert( rewardAmount <= PERIOD_REWARD_AMOUNT, "Reward overflow");

            // Issue IQ
            asset iqAssetPack = asset(int64_t(rewardAmount), IQSYMBOL);
            vector<permission_level> perlvs;
            permission_level tokenContract = permission_level{ TOKEN_CONTRACT_ACCTNAME, N(active) };
            permission_level articleContract = permission_level{ ARTICLE_CONTRACT_ACCTNAME, N(active) };
            perlvs.push_back(tokenContract);
            perlvs.push_back(articleContract);
            action(perlvs, TOKEN_CONTRACT_ACCTNAME, N(issue), std::make_tuple(rewards_it->user, iqAssetPack, std::string(""))).send();

            // Mark the reward as disbursed
            // TODO: may need to erase old reward notices once all disbursements occur
            rewardsidx.modify( rewards_it, 0, [&]( auto& a ) {
                a.disbursed = 1;
            });
        }
        rewards_it++;
    }

}

void eparticlectr::oldrwdspurge(uint64_t reward_period, uint32_t loop_limit) {
    // This function needs to be universally callable. A cron job will be api calling this every REWARD_INTERVAL seconds.

    uint64_t currentInterval = now() / REWARD_INTERVAL;
    print("Current interval is: ", currentInterval, "\n");

    // Make sure it is called AFTER the exiting reward period is done, so it isn't premature
    eosio_assert( currentInterval > reward_period, "Reward period is not over yet");

    // get all the rewards in that period
    rewardstbl rewardstable( _self, _self );
    auto rewardsidx = rewardstable.get_index<N(byfinalper)>();
    auto rewards_it = rewardsidx.find(reward_period);
    eosio_assert( rewards_it != rewardsidx.end(), "No rewards found in this period!");

    // Free up RAM
    uint32_t count = 0;
    while(rewards_it->proposal_finalize_period == reward_period && count < loop_limit && rewards_it != rewardsidx.end()) {
        rewards_it = rewardsidx.erase(rewards_it);
        count++;
    }

}

void eparticlectr::oldvotepurge( ipfshash_t& proposed_article_hash, uint32_t loop_limit ) {
    // Get the proposal object
    propstbl proptable( _self, _self );
    auto propidx = proptable.get_index<N(byhash)>();
    auto prop_it = propidx.find(eparticlectr::ipfs_to_key256(proposed_article_hash));
    eosio_assert( prop_it->status != 0, "Proposal not finalized yet!");

    // Retrieve votes from DB
    votestbl votetbl( _self, _self );
    auto voteidx = votetbl.get_index<N(byhash)>();
    auto vote_it = voteidx.find(eparticlectr::ipfs_to_key256(proposed_article_hash));
    eosio_assert( vote_it != voteidx.end(), "No votes found for proposal!");

    // Free up RAM
    uint32_t count = 0;
    while(vote_it->proposed_article_hash == proposed_article_hash && count < loop_limit && vote_it != voteidx.end()) {
        vote_it = voteidx.erase(vote_it);
        count++;
    }
}

EOSIO_ABI( eparticlectr, (brainclmid)(brainmeart)(finalize)(fnlbyhash)(oldrwdspurge)(oldvotepurge)(procrewards)(propose)(updatewiki)(votebyhash) )
