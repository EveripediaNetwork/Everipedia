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
[[eosio::action]]
void eparticlectr::brainclmid( uint64_t stakeid ) {

    // Get the stakes
    staketbl staketable(_self, _self.value);
    auto stake_it = staketable.find(stakeid);
    eosio_assert( stake_it != staketable.end(), "Stake does not exist in database");

    // See if the stake is complete
    eosio_assert( now() > stake_it->completion_time, "Staking period not over yet");

    // Inform the user
    require_recipient(stake_it->user);

    // Transfer back the IQ
    // use the safesend temporarily until RAM stealing exploit is fixed
    auto n = name{stake_it->user};
    std::string tempmemo = n.to_string();
    asset iqAssetPack = asset(int64_t(stake_it->amount * IQ_PRECISION_MULTIPLIER), IQSYMBOL);
    action(
        permission_level{ _self, name("active") },
        name("everipediaiq"), name("transfer"),
        std::make_tuple(_self, name("iqsafesendiq"), iqAssetPack, tempmemo)
    ).send();

    // Delete the stake.
    // Note that the erase() function increments the iterator, then gives it back after the erase is done
    stake_it = staketable.erase(stake_it);
}


// Place a vote using the IPFS hash
// Users have to trigger this action through the everipediaiq::epartvote action
[[eosio::action]]
void eparticlectr::votebyhash ( name voter, ipfshash_t& proposed_article_hash, bool approve, uint64_t amount, std::string memo ) {
    require_auth( _self );

    // Check if article exists
    propstbl proptable( _self, _self.value );
    auto prop_idx = proptable.get_index<name("byhash")>();
    auto prop_it = prop_idx.find(eparticlectr::ipfs_to_fixed_bytes32(proposed_article_hash));
    eosio_assert( prop_it != prop_idx.end(), "Proposal not found" );
    uint64_t proposal_id = prop_it->id;

    bool voterIsProposer = (voter == prop_it->proposer);

    // Verify voting is still in progress
    eosio_assert( now() < prop_it->endtime, "Voting period is over");

    // Create the stake object
    staketbl staketblobj(_self, _self.value);
    uint64_t stake_id = staketblobj.available_primary_key();
    staketblobj.emplace( _self, [&]( auto& s ) {
        s.id = stake_id;
        s.user = voter;
        s.amount = amount;
        s.timestamp = now();
        s.completion_time = now() + STAKING_DURATION;
    });

    // Store vote in DB
    votestbl votetbl( _self, _self.value );
    votetbl.emplace( _self, [&]( auto& a ) {
         a.id = votetbl.available_primary_key();
         a.proposal_id = proposal_id;
         a.proposed_article_hash = proposed_article_hash;
         a.approve = approve;
         a.is_editor = voterIsProposer;
         a.amount = amount;
         a.voter = voter;
         a.timestamp = now();
         a.stake_id = stake_id;
    });
}

[[eosio::action]]
void eparticlectr::updatewiki( ipfshash_t& current_hash ){
    // Manually update the wikistbl. This will be removed later.
    require_auth(ARTICLE_CONTRACT_ACCTNAME);

    wikistbl wikitbl( _self, _self.value );
    auto wikiidx = wikitbl.get_index<name("byhash")>();
    auto wiki_it = wikiidx.find(eparticlectr::ipfs_to_fixed_bytes32(current_hash));
    eosio_assert(wiki_it == wikiidx.end(), "wiki already exists in database");

    wikitbl.emplace( _self,  [&]( auto& a ) {
        a.id = wikitbl.available_primary_key();
        a.hash = current_hash;
        a.parent_hash = "";
    });
}

// Logic for proposing an edit for an article
// Users have to trigger this action through the everipediaiq::epartpropose action
[[eosio::action]]
void eparticlectr::propose( name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash, std::string memo ) {
    require_auth( _self );

    // Check for a duplicate proposal
    propstbl proptable( _self, _self.value );
    auto propidx = proptable.get_index<name("byhash")>();
    auto prop_it = propidx.find(eparticlectr::ipfs_to_fixed_bytes32(proposed_article_hash));
    eosio_assert(prop_it == propidx.end(), "Proposal already exists");

    // Store the proposal
    proptable.emplace( _self, [&]( auto& a ) {
        a.id = proptable.available_primary_key();
        a.proposed_article_hash = proposed_article_hash;
        a.old_article_hash = old_article_hash;
        a.proposer = proposer;
        a.starttime = now();
        a.endtime = now() + DEFAULT_VOTING_TIME;
        a.status = ProposalStatus::pending;
    });

    // Place the default vote
    action(
        permission_level { _self , name("active") },
        _self, name("votebyhash"),
        std::make_tuple( proposer, proposed_article_hash, true, EDIT_PROPOSE_IQ )
    ).send();
}

[[eosio::action]]
void eparticlectr::fnlbyhash( ipfshash_t& proposal_hash ) {
    // Add article to database, or update
    propstbl proptable( _self, _self.value );
    auto propidx = proptable.get_index<name("byhash")>();
    auto prop_it = propidx.find(eparticlectr::ipfs_to_fixed_bytes32(proposal_hash));
    eosio_assert( prop_it != propidx.end(), "Proposal not found" );
    eparticlectr::finalize(prop_it->id);
}

[[eosio::action]]
void eparticlectr::finalize( uint64_t proposal_id ) {
    // Verify proposal exists
    propstbl proptable( _self, _self.value );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "Proposal not found" );

    // Verify proposal has not been finalized already
    eosio_assert( prop_it->finalized_time == 0, "Proposal already finalized");

    // Verify voting period is complete
    eosio_assert( now() > prop_it->endtime, "Voting period is not over yet");

    // Retrieve votes from DB
    votestbl votetbl( _self, _self.value );
    auto voteidx = votetbl.get_index<name("byhash")>();
    auto vote_it = voteidx.find(eparticlectr::ipfs_to_fixed_bytes32(prop_it->proposed_article_hash));
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

    // Determine slashing conditions
    vote_it = voteidx.find(eparticlectr::ipfs_to_fixed_bytes32(prop_it->proposed_article_hash));
    bool approved = 0;
    bool istie = 0;
    float totalVotes = for_votes + against_votes;
    if ((for_votes / (float)totalVotes) >= TIER_ONE_THRESHOLD){
        approved = 1;
        if ((for_votes / (float)totalVotes) == TIER_ONE_THRESHOLD){
            istie = 1;
        }
    }
    float slash_ratio = 0.0f;
    if (approved){
        slash_ratio = (for_votes - against_votes) / (float)totalVotes;
    }
    else{
        slash_ratio = (against_votes - for_votes) / (float)totalVotes;
    }

    // Make sure no weird bugs cause the slash reward to under/overflow
    eosio_assert( slash_ratio >= 0.0f && slash_ratio <= 1.0f, "Slash ratio out of bounds");

    // Log result
    action(
        permission_level { _self , name("active") },
        _self, name("logpropres"),
        std::make_tuple( prop_it->proposed_article_hash, approved, for_votes, against_votes )
    ).send();

    // Mark proposal as accepted or rejected. Ties are rejected
    uint64_t currentInterval = now() / REWARD_INTERVAL;
    proptable.modify( prop_it, same_payer, [&]( auto& a ) {
        if (for_votes > against_votes) 
            a.status = ProposalStatus::accepted;
        else 
            a.status =  ProposalStatus::rejected;
        a.finalized_time = now();
    });

    rewardstbl rewardstable( _self, _self.value );

    while(vote_it->proposal_id == proposal_id && vote_it != voteidx.end() && istie == 0) {
        uint32_t extraSecsSlash = uint32_t((float)STAKING_DURATION * slash_ratio);
        // Slash losers
        if (vote_it->approve != approved) {
            staketbl staketable(_self, _self.value);
            auto stake_it = staketable.find(vote_it->stake_id);
            staketable.modify( stake_it, same_payer, [&]( auto& a ) {
                a.completion_time += extraSecsSlash;
                a.timestamp = now();
            });

            SEND_INLINE_ACTION( *this, slashnotify, {_self, name("active")}, {vote_it->voter, vote_it->amount, extraSecsSlash } );
        }
        // Reward the winners
        else{
            rewardstable.emplace( _self,  [&]( auto& a ) {
                a.id = rewardstable.available_primary_key();
                a.user = vote_it->voter;
                a.amount = vote_it->amount;
                a.approval_vote_sum = for_votes;
                a.proposal_id = proposal_id;
                a.proposed_article_hash = vote_it->proposed_article_hash;
                a.proposal_finalize_time = now();
                a.proposal_finalize_period = uint32_t(now() / REWARD_INTERVAL);
                a.proposalresult = approved;
                a.is_editor = vote_it->is_editor;
                a.is_tie = istie;
            });
        }
        vote_it++;
    }

    if (approved){
        // Add article to database, or update
        wikistbl wikitbl( _self, _self.value );
        auto wikiidx = wikitbl.get_index<name("byhash")>();
        auto wiki_it = wikiidx.find(eparticlectr::ipfs_to_fixed_bytes32(prop_it->old_article_hash));

        if (wiki_it == wikiidx.end()){
            wikitbl.emplace( _self,  [&]( auto& a ) {
                a.id = wikitbl.available_primary_key();
                a.hash = prop_it->proposed_article_hash;
                a.parent_hash = prop_it->old_article_hash;
            });
        }
        else{
            wikiidx.modify( wiki_it, same_payer, [&]( auto& a ) {
                a.hash = prop_it->proposed_article_hash;
                a.parent_hash = prop_it->old_article_hash;
            });
        }
    }

}

[[eosio::action]]
void eparticlectr::procrewards(uint64_t reward_period) {
    // This function needs to be universally callable. A cron job will be api calling this every REWARD_INTERVAL seconds.

    uint64_t currentInterval = now() / REWARD_INTERVAL;

    // Make sure it is called AFTER the exiting reward period is done, so it isn't premature
    eosio_assert( currentInterval > reward_period, "Reward period is not over yet");

    // get all the rewards in that period
    rewardstbl rewardstable( _self, _self.value );
    auto rewardsidx = rewardstable.get_index<name("byfinalper")>();
    auto rewards_it = rewardsidx.find(reward_period);
    eosio_assert( rewards_it != rewardsidx.end(), "No rewards found in this period!");

    // no duplicate calculations
    perrwdstbl perrewards( _self, _self.value );
    auto period_it = perrewards.find( reward_period );
    eosio_assert( period_it == perrewards.end(), "Rewards have already been calculated for this period");

    // Calculate the total rewards amount in a period
    uint64_t curationRewardSum = 0;
    uint64_t editorRewardSum = 0;
    while(rewards_it != rewardsidx.end() && rewards_it->proposal_finalize_period == reward_period ) {
        curationRewardSum += rewards_it->amount;

        if (rewards_it->is_editor && rewards_it->proposalresult == 1){
            editorRewardSum += rewards_it->approval_vote_sum;
        }
        rewards_it++;
    }

    // Store the reward sums for the period
    perrewards.emplace( _self, [&]( auto& p ) {
	    p.period = reward_period;
	    p.curation_sum = curationRewardSum;
	    p.editor_sum = editorRewardSum;
    });
}

[[eosio::action]]
void eparticlectr::rewardclmid ( uint64_t reward_id ) {
    // prep tables
    perrwdstbl perrewards( _self, _self.value );
    rewardstbl rewardstable( _self, _self.value );

    // check if user rewards exist
    auto reward_it = rewardstable.find( reward_id );
    eosio_assert( reward_it != rewardstable.end(), "reward doesn't exist in database");

    // Make sure period has been processed before claiming
    auto period_it = perrewards.find( reward_it->proposal_finalize_period );
    eosio_assert(period_it != perrewards.end(), "Must call procrewards for this period first");

    // Send curation reward
    int64_t curation_reward = reward_it->amount * PERIOD_CURATION_REWARD / period_it->curation_sum;
    eosio_assert(curation_reward <= PERIOD_CURATION_REWARD, "System logic error. Too much IQ calculated for curation reward.");
    if (curation_reward == 0) // Minimum reward of 0.001 IQ to prevent unclaimable rewards
        curation_reward = 1;
    asset curation_quantity = asset(curation_reward, IQSYMBOL);
    action(
        permission_level { name("everipediaiq"), name("active") },
        name("everipediaiq"), name("issue"),
        std::make_tuple( reward_it->user, curation_quantity, std::string("Curation IQ reward") )
    ).send();

    // Send editor reward
    if (reward_it->is_editor && reward_it->proposalresult) {
        int64_t editor_reward = reward_it->approval_vote_sum * PERIOD_EDITOR_REWARD / period_it->editor_sum;
        if (editor_reward == 0) // Minimum reward of 0.001 IQ to prevent unclaimable rewards
            editor_reward = 1;
        eosio_assert(editor_reward <= PERIOD_EDITOR_REWARD, "System logic error. Too much IQ calculated for editor reward.");
        asset editor_quantity = asset(editor_reward, IQSYMBOL);
        action(
            permission_level { name("everipediaiq"), name("active") },
            name("everipediaiq"), name("issue"),
            std::make_tuple( reward_it->user, editor_quantity, std::string("Editor IQ reward") )
        ).send();
    }

    // delete reward after claiming
    reward_it = rewardstable.erase( reward_it );
}

[[eosio::action]]
void eparticlectr::oldvotepurge( ipfshash_t& proposed_article_hash, uint32_t loop_limit ) {
    // Get the proposal object
    propstbl proptable( _self, _self.value );
    auto propidx = proptable.get_index<name("byhash")>();
    auto prop_it = propidx.find(eparticlectr::ipfs_to_fixed_bytes32(proposed_article_hash));
    eosio_assert( prop_it->status != 0, "Proposal not finalized yet!");

    // Retrieve votes from DB
    votestbl votetbl( _self, _self.value );
    auto voteidx = votetbl.get_index<name("byhash")>();
    auto vote_it = voteidx.find(eparticlectr::ipfs_to_fixed_bytes32(proposed_article_hash));
    eosio_assert( vote_it != voteidx.end(), "No votes found for proposal!");

    // Free up RAM
    uint32_t count = 0;
    while(vote_it->proposed_article_hash == proposed_article_hash && count < loop_limit && vote_it != voteidx.end()) {
        vote_it = voteidx.erase(vote_it);
        count++;
    }
}

[[eosio::action]]
void eparticlectr::slashnotify( name slashee, uint64_t amount, uint32_t seconds ){
    require_auth( _self );
    require_recipient( slashee );
}

[[eosio::action]]
void eparticlectr::logpropres( ipfshash_t& proposal, bool approved, uint64_t yes_votes, uint64_t no_votes ) {
    require_auth( _self );
}

EOSIO_DISPATCH( eparticlectr, (brainclmid)(slashnotify)(finalize)(fnlbyhash)(oldvotepurge)(procrewards)(propose)(rewardclmid)(updatewiki)(votebyhash)(logpropres) )
