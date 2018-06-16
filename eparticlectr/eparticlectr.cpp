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
#include "../epiqtokenctr/epiqtokenctr.hpp"
#include <typeinfo>

uint64_t eparticlectr::getiqbalance( account_name from ) {
    // Create the account object
    eparticlectr::accounts accountstable( N(epiqtokenctr), from );
    auto iqAccount_iter = accountstable.find(IQSYMBOL.name());

    // Check for an account
    if(iqAccount_iter != accountstable.end()){
        return iqAccount_iter->balance.amount;
    }
    else{
        return 0;
    }
}

// This function is used to swap endianess for uint64_t's for key and javascript 58-bit int limit issues.
uint64_t eparticlectr::swapEndian64(uint64_t X) {
    uint64_t x = (uint64_t) X;
    x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
    x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
    x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
    return x;
}

// Stake IQ in exchange for brainpower
// Note that the "amount" parameter is in full precision. Dividing it by IQ_PRECISION_MULTIPLIER would give the "clean" amount with a decimal.
void eparticlectr::brainmeart( account_name staker, uint64_t amount) {
    // Only the token contract can call this to prevent fraudulent transactions
    require_auth(ARTICLE_CONTRACT_ACCTNAME);

    uint64_t newBrainpower = amount * IQ_TO_BRAINPOWER_RATIO;

    // Get the brainpower
    brainpwrtbl braintable(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    auto brainidx = braintable.get_index<N(byuser)>();
    auto brain_it = brainidx.find(staker);

    uint64_t name64t = staker;

    // Add the brainpower, creating a new table entry if the staker has never staked before
    if(brain_it == brainidx.end()){
      braintable.emplace( ARTICLE_CONTRACT_ACCTNAME, [&]( auto& b ) {
          b.user = staker;
          b.user_64t = eparticlectr::swapEndian64(staker);
          b.power = newBrainpower;
      });
    }
    else {
      brainidx.modify( brain_it, 0, [&]( auto& b ) {
          b.add(newBrainpower);
      });
    }

    // Create the stake object
    staketbl staketblobj(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    staketblobj.emplace( ARTICLE_CONTRACT_ACCTNAME, [&]( auto& s ) {
        s.id = staketblobj.available_primary_key();
        s.user = staker;
        s.user_64t = eparticlectr::swapEndian64(staker);
        s.amount = amount;
        s.timestamp = now();
        s.completion_time = now() + STAKING_DURATION;
    });
}

// Redeem IQ using brainpower, with an amount specified
void eparticlectr::brainclaim( account_name claimant, uint64_t amount) {

    eosio_assert(0, "This function is not ready yet");
    // Get the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brainidx = braintable.get_index<N(byuser)>();
    auto brain_it = brainidx.find(claimant);
    eosio_assert( brain_it != brainidx.end(), "No brainpower found");

    // Subtract the brainpower for the redemption
    brainidx.modify( brain_it, 0, [&]( auto& b ) {
        b.sub(amount);
    });

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
            iqAssetPack = asset(stake_it->amount, IQSYMBOL);
            action(permission_level{ ARTICLE_CONTRACT_ACCTNAME, N(active) }, N(epiqtokenctr), N(transfer), std::make_tuple(ARTICLE_CONTRACT_ACCTNAME,
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

// Redeem IQ using brainpower, with a specific stake specified
void eparticlectr::brainclmid( account_name claimant, uint64_t stakeid) {
    // Get the brainpower
    brainpwrtbl braintable(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    auto brainidx = braintable.get_index<N(byuser)>();
    auto brain_it = brainidx.find(claimant);
    eosio_assert( brain_it != brainidx.end(), "No brainpower found");

    // Get the stakes
    staketbl staketable(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    auto stake_it = staketable.find(stakeid);
    eosio_assert( stake_it != staketable.end(), "No stakes found for proposal");

    // Subtract the brainpower for the redemption
    brainidx.modify( brain_it, 0, [&]( auto& b ) {
        b.sub(stake_it->amount);
    });

    // Dummy initialization
    asset iqAssetPack;

    // See if the stake is over 21 days old
    eosio_assert( now() > stake_it->completion_time, "Staking period not over yet");

    // Transfer back the IQ
    iqAssetPack = asset(stake_it->amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    eosio::action theAction = action(permission_level{ ARTICLE_CONTRACT_ACCTNAME, N(active) }, N(epiqtokenctr), N(transfer),
                    std::make_tuple(ARTICLE_CONTRACT_ACCTNAME, claimant, iqAssetPack, std::string("")));
    theAction.send();

    // Delete the stake.
    // Note that the erase() function increments the iterator, then gives it back after the erase is done
    stake_it = staketable.erase(stake_it);
}

// A few functions to be run right before the proposal is submitted
void eparticlectr::propose_precheck( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash ) {
    // Fetch the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brainidx = braintable.get_index<N(byuser)>();
    auto brain_it = brainidx.find(proposer);
    eosio_assert( brain_it != brainidx.end(), "No brainpower found");

    // Re-check that enough brainpower is available
    eosio_assert(brain_it->power > EDIT_PROPOSE_BRAINPOWER, "Not enough brainpower to edit, you need to stake some more IQ using epiqtokenctr::brainmeiq first!");
}

// Propose an edit for an article
void eparticlectr::propose( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash, ipfshash_t& grandparent_hash ) {
    // Check to make sure enough brainpower is present
    eparticlectr::propose_precheck(proposer, proposed_article_hash, old_article_hash);

    // Check for a duplicate proposal
    propstbl proptable( _self, _self );
    auto propidx = proptable.get_index<N(byhash)>();
    auto prop_it = propidx.find(eparticlectr::ipfs_to_key256(proposed_article_hash));
    eosio_assert(prop_it == propidx.end(), "Proposal already exists");

    // Store the proposal
    uint64_t propPrimaryKey = ipfs_to_uint64_trunc(proposed_article_hash);
    proptable.emplace( _self, [&]( auto& a ) {
        a.id = propPrimaryKey; // TODO: need to remove this later, or account for uniqueness
        a.proposed_article_hash = proposed_article_hash;
        a.old_article_hash = old_article_hash;
        a.grandparent_hash = grandparent_hash;
        a.threshold = 0;
        a.proposer = proposer;
        a.proposer_64t = eparticlectr::swapEndian64(proposer);
        a.starttime = now();
        a.endtime = now() + DEFAULT_VOTING_TIME;
        a.status = ProposalStatus::pending;
    });

    // Place the vote
    eparticlectr::votebyhash( proposer, proposed_article_hash, true, EDIT_PROPOSE_BRAINPOWER );
}

// Place a vote using the IPFS hash
void eparticlectr::votebyhash ( account_name voter, ipfshash_t& proposed_article_hash, bool approve, uint64_t amount ) {
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
    auto brainidx = braintable.get_index<N(byuser)>();
    auto brain_it = brainidx.find(voter);

    // Consume brainpower
    eosio_assert(brain_it->power >= amount, "Not enough brainpower");
    brainidx.modify( brain_it, 0, [&]( auto& b ) {
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
             a.voter_64t = eparticlectr::swapEndian64(voter);
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
                 a.voter_64t = eparticlectr::swapEndian64(voter);
                 a.timestamp = now();
            });
        }
    }
}

// Place a vote using the proposal ID
void eparticlectr::votebyid ( account_name voter, uint64_t proposal_id, bool approve, uint64_t amount ) {
    // Check if article exists
    propstbl proptable( _self, _self );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "proposal not found" );
    ipfshash_t thePropHash = prop_it->proposed_article_hash;

    eparticlectr::votebyhash(voter, thePropHash, approve, amount);
}

void eparticlectr::fnlbyhash( account_name from, ipfshash_t& proposal_hash ) {
    // Add article to database, or update
    propstbl proptable( _self, _self );
    auto propidx = proptable.get_index<N(byhash)>();
    auto prop_it = propidx.find(eparticlectr::ipfs_to_key256(proposal_hash));
    eosio_assert( prop_it != propidx.end(), "proposal not found" );
    print(prop_it->id);
    eparticlectr::finalize(from, prop_it->id);
}

void eparticlectr::finalize( account_name from, uint64_t proposal_id ) {
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

    print("CHECKING SLASHING\n");
    // Determine slashing conditions
    vote_it = voteidx.find(eparticlectr::ipfs_to_key256(prop_it->proposed_article_hash));
    bool approved = 0;
    longdub_t totalVotes = for_votes + against_votes;
    if ((for_votes / (float)totalVotes) > TIER_ONE_THRESHOLD){
        approved = 1;
    }
    float slash_ratio;
    float tierRatio;
    uint32_t tier = 1;

    if (approved)
        slash_ratio = (for_votes - against_votes) / (float)totalVotes;
        tierRatio = for_votes / (float)totalVotes;
        if (tierRatio >= TIER_THREE_THRESHOLD){ tier = 3; }
        else if (tierRatio > TIER_ONE_THRESHOLD){ tier = 2; }
    else
        slash_ratio = (against_votes - for_votes) / (float)totalVotes;

    print("MARKING PROPOSALS\n");
    // Mark proposal as accepted or rejected. Ties are rejected
    uint32_t finalTime = now();
    proptable.modify( prop_it, 0, [&]( auto& a ) {
        if (for_votes > against_votes){
            a.status =  ProposalStatus::accepted;
            a.threshold =  for_votes - against_votes;
            a.tier = tier;
            a.finalized_time = finalTime;
        }
        else{
            a.status =  ProposalStatus::rejected;
            a.threshold =  against_votes - for_votes;
            a.tier = tier;
            a.finalized_time = finalTime;
        }

    });

    print("INITIALIZE REWARDS TABLE");
    rewardstbl rewardstable( _self, _self );

    print("SEEING VOTES\n");
    while(vote_it->proposal_id == proposal_id) {
        uint64_t change_amount = vote_it->amount;
        if (vote_it->approve != approved) {
            // Slash losers
            print("SLASHING THE LOSERS\n");
            uint64_t runningTally = vote_it->amount;

            // Get the stakes
            print("GETTING THE STAKES\n");
            staketbl staketable(_self, _self);
            auto stakeidx = staketable.get_index<N(byuser)>();
            auto stake_it = stakeidx.find(vote_it->voter);

            while(stake_it->user == vote_it->voter) {
                if(stake_it->amount >= runningTally){
                    stakeidx.modify( stake_it, 0, [&]( auto& a ) {
                        a.completion_time += STAKING_DURATION * slash_ratio;
                        a.timestamp = finalTime;
                        runningTally -= stake_it->amount;
                    });
                }
                else{
                    // The slash amount does not fill a full stake, so the stake needs to be split
                    uint64_t newAmount = stake_it->amount - runningTally;
                    uint32_t oldTimestamp = stake_it->timestamp;
                    uint32_t oldCompletionTime = stake_it->completion_time;

                    stakeidx.modify( stake_it, 0, [&]( auto& a ) {
                        a.completion_time += STAKING_DURATION * slash_ratio;
                        a.amount = runningTally;
                    });
                    staketable.emplace( vote_it->voter,  [&]( auto& a ) {
                        a.id = staketable.available_primary_key();
                        a.user = vote_it->voter;
                        a.user_64t = eparticlectr::swapEndian64(vote_it->voter);
                        a.amount = newAmount;
                        a.timestamp = oldTimestamp;
                        a.completion_time = oldCompletionTime;
                    });
                    break;
                }

                rewardstable.emplace( _self,  [&]( auto& a ) {
                    a.id = rewardstable.available_primary_key();
                    a.user = vote_it->voter;
                    a.user_64t = eparticlectr::swapEndian64(vote_it->voter);
                    a.amount = change_amount;
                    a.proposal_id = proposal_id;
                    a.proposal_finalize_time = finalTime;
                    a.is_editor = vote_it->is_editor;
                    a.proposalresult = approved;
                    a.tier = tier;
                    a.rewardtype = 0;
                    a.disbursed = 1;
                });

                stake_it++;
            }
        }
        else{
            // TODO: Reward the winners
            print("REWARDING THE WINNERS\n");

            // Return brainpower collateral
            brainpwrtbl braintable(_self, _self);
            auto brainidx = braintable.get_index<N(byuser)>();
            auto brain_it = brainidx.find(vote_it->voter);
            brainidx.modify( brain_it, 0, [&]( auto& b ) {
                b.add(change_amount);
            });

            rewardstable.emplace( _self,  [&]( auto& a ) {
                a.id = rewardstable.available_primary_key();
                a.user = vote_it->voter;
                a.user_64t = eparticlectr::swapEndian64(vote_it->voter);
                a.amount = change_amount;
                a.proposal_id = proposal_id;
                a.proposal_finalize_time = finalTime;
                a.proposalresult = approved;
                a.is_editor = vote_it->is_editor;
                a.tier = tier;
                a.rewardtype = 1;
                a.disbursed = 0;
            });
        }
        vote_it++;
    }

    if (approved){
        // Add article to database, or update
        print("ADDING ARTICLE TO DATABASE\n");
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

void eparticlectr::procrewards(uint64_t reward_period ) {
    // This function needs to be universally callable. A cron job will be api calling this every REWARD_INTERVAL seconds.
    // require_auth(ARTICLE_CONTRACT_ACCTNAME);

    eosio_assert(0, "This function will be implemented later");

    uint64_t currentInterval = now() / REWARD_INTERVAL;
    print("Current interval is: ", currentInterval, "\n");

    // Make sure it is called AFTER the exiting reward period is done, so it isn't premature
    // eosio_assert( currentInterval > reward_period, "Reward period is not over yet");

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
            if (rewards_it->is_editor == 1 && rewards_it->tier >= 3){
                editorRewardSum += rewards_it->amount;
            }
            else{
                curationRewardSum += rewards_it->amount;
            }
        }
        rewards_it++;
    }

    // Reset the rewards loop and start rewarding
    rewards_it = rewardsidx.find(reward_period);

    while(rewards_it != rewardsidx.end()) {
        if (rewards_it->rewardtype == 1){
            uint64_t rewardAmount = 0;
            if (rewards_it->is_editor == 1 && rewards_it->tier >= 3){
                rewardAmount = ((rewards_it->amount) / (longdub_t)editorRewardSum) * PERIOD_EDITOR_REWARD;
            }
            else{
                rewardAmount = ((rewards_it->amount) / (longdub_t)curationRewardSum) * PERIOD_CURATION_REWARD;
                curationRewardSum += rewards_it->amount;
            }

            // Issue IQ
            asset iqAssetPack = asset(rewardAmount, IQSYMBOL);
            vector<permission_level> perlvs;
            permission_level tokenContract = permission_level{ N(epiqtokenctr), N(active) };
            permission_level articleContract = permission_level{ ARTICLE_CONTRACT_ACCTNAME, N(active) };
            perlvs.push_back(tokenContract);
            perlvs.push_back(articleContract);
            action(perlvs, N(epiqtokenctr), N(issue), std::make_tuple(rewards_it->user, iqAssetPack, std::string(""))).send();

            // Mark the reward as disbursed
            rewardsidx.modify( rewards_it, 0, [&]( auto& a ) {
                a.disbursed = 1;
            });
        }
        rewards_it++;
    }

}

void eparticlectr::testinsert( account_name inputaccount, ipfshash_t inputhash ) {
    // Create the account object
    eparticlectr::accounts accountstable( N(epiqtokenctr), N(minieo) );
    auto iqAccount_iter = accountstable.begin();

    // Check for an account
    while (iqAccount_iter != accountstable.end()){
        print(iqAccount_iter->balance.amount, "\n");
        print(iqAccount_iter->balance.symbol.name(), "\n");
        print(IQSYMBOL, "\n");
        iqAccount_iter++;
    }
}

EOSIO_ABI( eparticlectr, (brainmeart)(brainclaim)(brainclmid)(finalize)(fnlbyhash)(procrewards)(propose)(votebyhash)(testinsert) )
