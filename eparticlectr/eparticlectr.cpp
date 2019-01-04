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

#include "eparticlectr.hpp"

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
void eparticlectr::vote( name voter, uint64_t proposal_id, bool approve, uint64_t amount, std::string memo ) {
    require_auth( _self );

    // Check if proposal exists
    propstbl proptable( _self, _self.value );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "Proposal not found" );

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
         a.approve = approve;
         a.is_editor = voterIsProposer;
         a.amount = amount;
         a.voter = voter;
         a.timestamp = now();
         a.stake_id = stake_id;
    });
}

// Manually update the wikistbl. This will be removed later.
[[eosio::action]]
void eparticlectr::updatewiki( int64_t id, std::string title, int64_t group_id, std::string lang_code, const ipfshash_t ipfs_hash ){
    require_auth( _self );

    // Argument checks
    eosio_assert(id < 1e9, "Max manual id permitted is 1e9. Specify -1 for auto-generated ID");
    eosio_assert(id > -2, "ID must be greater than -2. Specify -1 for auto-generated ID");
    eosio_assert(lang_code.size() <= 7, "lang_code must be less than 7 bytes");

    wikistbl wikitbl( _self, _self.value );
    bool modify = false;
    if (id >= 0) {
        auto wiki_it = wikitbl.find( id );
        if (wiki_it != wikitbl.end()) {
            wikitbl.modify( wiki_it, _self, [&]( auto& a ) {
                a.title = title;
                a.group_id = group_id;
                a.lang_code = lang_code;
                a.ipfs_hash = ipfs_hash;
            });
            return;
        }
    }

    wikitbl.emplace( _self,  [&]( auto& a ) {
        if (id == -1)
            id = wikitbl.available_primary_key();
        a.id = id;
        a.title = title;
        a.group_id = group_id;
        a.lang_code = lang_code;
        a.ipfs_hash = ipfs_hash;
    });
}

// Logic for proposing an edit for an article
// Users have to trigger this action through the everipediaiq::epartpropose action
[[eosio::action]]
void eparticlectr::propose( name proposer, int64_t wiki_id, std::string title, ipfshash_t ipfs_hash, std::string comment, std::string memo ) {
    require_auth( _self );

    // Argument checks
    eosio_assert( title.size() < 32, "title must be less than 32 bytes");
    eosio_assert( comment.size() < 256, "comment must be less than 256 bytes");
    eosio_assert( memo.size() < 32, "memo must be less than 32 bytes");
    eosio_assert(wiki_id < 1e9, "Max manual id permitted is 1e9. Specify -1 for auto-generated ID");
    eosio_assert(wiki_id > -2, "ID must be greater than -2. Specify -1 for auto-generated ID");

    // Store the proposal
    propstbl proptable( _self, _self.value );
    proptable.emplace( _self, [&]( auto& a ) {
        a.id = proptable.available_primary_key();
        a.wiki_id = wiki_id;
        a.title = title;
        a.ipfs_hash = ipfs_hash;
        a.proposer = proposer;
        a.starttime = now();
        a.endtime = now() + DEFAULT_VOTING_TIME;
        a.memo = memo;
    });

    // Place the default vote
    action(
        permission_level { _self , name("active") },
        _self, name("vote"),
        std::make_tuple( proposer, ipfs_hash, true, EDIT_PROPOSE_IQ )
    ).send();
}

[[eosio::action]]
void eparticlectr::finalize( uint64_t proposal_id ) {
    // Verify proposal exists
    propstbl proptable( _self, _self.value );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "Proposal not found" );

    // Verify voting period is complete
    eosio_assert( now() > prop_it->endtime, "Voting period is not over yet");

    // Retrieve votes from DB
    votestbl votetbl( _self, _self.value );
    auto voteidx = votetbl.get_index<name("byproposal")>();
    auto vote_it = voteidx.find(proposal_id);
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
    vote_it = voteidx.find(proposal_id);
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
        std::make_tuple( prop_it->ipfs_hash, approved, for_votes, against_votes )
    ).send();

    rewardstbl rewardstable( _self, _self.value );

    // Slash / reward votes
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
                a.proposal_finalize_time = now();
                a.proposal_finalize_period = uint32_t(now() / REWARD_INTERVAL);
                a.proposalresult = approved;
                a.is_editor = vote_it->is_editor;
                a.is_tie = istie;
            });
        }
        vote_it++;
    }

    if (approved)
        updatewiki(prop_it->id, prop_it->title, prop_it->group_id, prop_it->lang_code, prop_it->ipfs_hash);
}

// This function needs to be universally callable. A cron job will be calling this regularly
[[eosio::action]]
void eparticlectr::procrewards(uint64_t reward_period) {

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
void eparticlectr::oldvotepurge( uint64_t proposal_id, uint32_t loop_limit ) {
    // Get the proposal object
    propstbl proptable( _self, _self.value );
    auto prop_it = proptable.find(proposal_id);
    eosio_assert( prop_it == proptable.end(), "Proposal not finalized yet!");

    // Retrieve votes from DB
    votestbl votetbl( _self, _self.value );
    auto voteidx = votetbl.get_index<name("byproposal")>();
    auto vote_it = voteidx.find(proposal_id);
    eosio_assert( vote_it != voteidx.end(), "No votes found for proposal!");

    // Free up RAM
    uint32_t count = 0;
    while(vote_it->proposal_id == proposal_id && count < loop_limit && vote_it != voteidx.end()) {
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

EOSIO_DISPATCH( eparticlectr, (brainclmid)(slashnotify)(finalize)(oldvotepurge)(procrewards)(propose)(rewardclmid)(updatewiki)(vote)(logpropres) )
