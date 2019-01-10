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

    // mark if this is the initial editor vote
    votestbl votetbl( _self, proposal_id );
    bool voterIsProposer = (votetbl.begin() == votetbl.end()); 
   
    // Store vote in DB
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

// Logic for proposing an edit for an article
// Users have to trigger this action through the everipediaiq::epartpropose action
[[eosio::action]]
void eparticlectr::propose( name proposer, int64_t wiki_id, std::string title, ipfshash_t ipfs_hash, std::string lang_code, int64_t group_id, std::string comment, std::string memo ) {
    require_auth( _self );

    // Argument checks
    eosio_assert( title.size() < 32, "title must be less than 32 bytes");
    eosio_assert( ipfs_hash.size() < 100, "IPFS hash is unreasonably long. 100 char limit.");
    eosio_assert( lang_code.size() < 8, "lang_code must be less than 8 characters");
    eosio_assert( lang_code.size() >= 2, "lang_code must be atleast 2 characters");
    eosio_assert( comment.size() < 256, "comment must be less than 256 bytes");
    eosio_assert( memo.size() < 32, "memo must be less than 32 bytes");
    eosio_assert(wiki_id < 1e9, "Max manual id permitted is 1e9. Specify -1 for auto-generated ID");
    eosio_assert(wiki_id > -2, "ID must be greater than -2. Specify -1 for auto-generated ID");

    // Store the proposal
    propstbl proptable( _self, _self.value );
    uint64_t proposal_id = proptable.available_primary_key();
    uint32_t starttime = now();
    uint32_t endtime = now() + DEFAULT_VOTING_TIME;
    proptable.emplace( _self, [&]( auto& a ) {
        a.id = proposal_id;
        a.wiki_id = wiki_id;
        a.title = title;
        a.group_id = group_id;
        a.lang_code = lang_code;
        a.ipfs_hash = ipfs_hash;
        a.proposer = proposer;
        a.starttime = starttime;
        a.endtime = endtime;
        a.memo = memo;
    });

    // Log the proposal info (the ID can't be determined without this)
    action(
        permission_level { _self, name("active") },
        _self, name("logpropinfo"),
        std::make_tuple( proposal_id, proposer, wiki_id, title, ipfs_hash, lang_code, group_id, comment, memo, starttime, endtime )
    ).send();

    // Place the default vote
    action(
        permission_level { _self , name("active") },
        _self, name("vote"),
        std::make_tuple( proposer, proposal_id, true, EDIT_PROPOSE_IQ, std::string("editor initial vote") )
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
    votestbl votetbl( _self, proposal_id );
    auto vote_it = votetbl.begin();
    eosio_assert( vote_it != votetbl.end(), "No votes found for proposal");

    // Tally votes
    uint64_t yes_votes = 0;
    uint64_t no_votes = 0;
    while(vote_it->proposal_id == proposal_id && vote_it != votetbl.end()) {
        if (vote_it->approve)
            yes_votes += vote_it->amount;
        else
            no_votes += vote_it->amount;
        vote_it++;
    }

    // Determine slashing conditions
    vote_it = votetbl.begin();
    bool approved = 0;
    bool istie = 0;
    float totalVotes = yes_votes + no_votes;
    if ((yes_votes / totalVotes) >= TIER_ONE_THRESHOLD){
        approved = 1;
        if ((yes_votes / totalVotes) == TIER_ONE_THRESHOLD){
            istie = 1;
        }
    }
    float slash_ratio = 0.0f;
    if (approved){
        slash_ratio = (yes_votes - no_votes) / totalVotes;
    }
    else{
        slash_ratio = (no_votes - yes_votes) / totalVotes;
    }

    // Make sure no weird bugs cause the slash reward to under/overflow
    eosio_assert( slash_ratio >= 0.0f && slash_ratio <= 1.0f, "Slash ratio out of bounds");

    rewardstbl rewardstable( _self, _self.value );

    // Slash / reward votes
    while(vote_it != votetbl.end() && istie == 0) {
        uint32_t extraSecsSlash = uint32_t((float)STAKING_DURATION * slash_ratio);
        // Slash losers
        if (vote_it->approve != approved) {
            staketbl staketable(_self, _self.value);
            auto stake_it = staketable.find(vote_it->stake_id);
            staketable.modify( stake_it, same_payer, [&]( auto& a ) {
                a.completion_time += extraSecsSlash;
                a.timestamp = now();
            });

            action( 
                permission_level { _self, name("active") },
                _self, name("slashnotify"),
                std::make_tuple( vote_it->voter, vote_it->amount, extraSecsSlash )
            ).send();
        }
        // Reward the winners
        else{
            rewardstable.emplace( _self,  [&]( auto& a ) {
                a.id = rewardstable.available_primary_key();
                a.user = vote_it->voter;
                a.amount = vote_it->amount;
                if (approved && vote_it->is_editor)
                    a.edit_points = (yes_votes - no_votes);
                else
                    a.edit_points = 0;
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


    // Insert wiki into DB
    uint64_t group_id = prop_it->group_id;
    uint64_t wiki_id = prop_it->wiki_id;
    if (approved) {
        wikistbl wikitbl( _self, _self.value );
        bool placed = false;
        if (wiki_id >= 0) {
            auto wiki_it = wikitbl.find( wiki_id );
            if (wiki_it != wikitbl.end()) {
                wikitbl.modify( wiki_it, _self, [&]( auto& a ) {
                    a.title = prop_it->title;
                    if (group_id == -1)
                        group_id = wiki_id;
                    a.group_id = group_id;
                    a.lang_code = prop_it->lang_code;
                    a.ipfs_hash = prop_it->ipfs_hash;
                });
                placed = true;
            }
        }

        if (!placed) {
            wikitbl.emplace( _self,  [&]( auto& a ) {
                if (wiki_id == -1)
                    wiki_id = wikitbl.available_primary_key();
                a.id = wiki_id;
                a.title = prop_it->title;
                if (group_id == -1)
                    group_id = wiki_id;
                a.group_id = group_id;
                a.lang_code = prop_it->lang_code;
                a.ipfs_hash = prop_it->ipfs_hash;
            });
        }
    }

    // Log proposal result and new wiki id
    action(
        permission_level { _self, name("active") },
        _self, name("logpropres"),
        std::make_tuple( prop_it->id, wiki_id, approved, yes_votes, no_votes )
    ).send();

    // delete proposal
    proptable.erase( prop_it );
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
            editorRewardSum += rewards_it->edit_points;
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
        int64_t editor_reward = reward_it->edit_points * PERIOD_EDITOR_REWARD / period_it->editor_sum;
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
    votestbl votetbl( _self, proposal_id );
    auto vote_it = votetbl.begin();
    eosio_assert( vote_it != votetbl.end(), "No votes found for proposal!");

    // Free up RAM
    uint32_t count = 0;
    while(count < loop_limit && vote_it != votetbl.end()) {
        vote_it = votetbl.erase(vote_it);
        count++;
    }
}

[[eosio::action]]
void eparticlectr::slashnotify( name slashee, uint64_t amount, uint32_t seconds ){
    require_auth( _self );
}

[[eosio::action]]
void eparticlectr::logpropres( uint64_t proposal_id, int64_t wiki_id, bool approved, uint64_t yes_votes, uint64_t no_votes ) {
    require_auth( _self );
}

[[eosio::action]]
void eparticlectr::logpropinfo( uint64_t proposal_id, name proposer, int64_t wiki_id, std::string title, ipfshash_t ipfs_hash, std::string lang_code, int64_t group_id, std::string comment, std::string memo, uint32_t starttime, uint32_t endtime) {
    require_auth( _self );
}

EOSIO_DISPATCH( eparticlectr, (brainclmid)(slashnotify)(finalize)(oldvotepurge)(procrewards)(propose)(rewardclmid)(vote)(logpropres)(logpropinfo) )
