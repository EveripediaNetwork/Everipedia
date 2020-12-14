// # 2020 Travis Moore, Kedar Iyer, Sam Kazemian
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
    // Deprecated
    eosio::check(false, "brainclmid is deprecated. Use brainclmidex instead");
    return;
}

// Redeem IQ, with a specific stake specified
[[eosio::action]]
void eparticlectr::brainclmidex( uint64_t stakeid ) {

    // Get the stakes
    staketblex staketable(_self, _self.value);
    const auto& stake_it = staketable.get(stakeid, "Stake does not exist in database");

    // See if the stake is complete
    eosio::check( eosio::current_time_point().sec_since_epoch() > stake_it.completion_time, "Staking period not over yet");

    // Transfer back the IQ
    asset iqAssetPack = asset(int64_t(stake_it.amount * IQ_PRECISION_MULTIPLIER), IQSYMBOL);
    std::string memo = std::string("return stake #") + std::to_string(stake_it.id);
    action(
        permission_level{ _self, name("active") },
        TOKEN_CONTRACT, name("transfrextra"),
        std::make_tuple(_self, stake_it.user, iqAssetPack, memo, stake_it.proxied_for, std::string("return stake #") + std::to_string(stake_it.id), stake_it.extra_note )
    ).send();

    // Delete the stake.
    // Note that the erase() function increments the iterator, then gives it back after the erase is done
    staketable.erase(stake_it);
}

// Clean erroneous rewards from pre-EPID migration
[[eosio::action]]
void eparticlectr::prgpremigrwd( uint32_t loop_limit ) {
    require_auth( MAINTENANCE_CONTRACT );

    // Get the stake table
    rewardstblex rewardstable( _self, _self.value );

    // Loop through the old stakes 
    auto rwd_it = rewardstable.begin();
    uint32_t count = 0;
    while(count < loop_limit && rwd_it != rewardstable.end()) {

        // Delete the reward.
        // Note that the erase() function increments the iterator, then gives it back after the erase is done
        if (rwd_it->proposal_finalize_period <= 885695 || rwd_it->proposal_id <= 1000000){
            rwd_it = rewardstable.erase(rwd_it);
        }
        else{
            rwd_it++;
        }
        // Increase the count
        count++;
    }

}

// Clean erroneous proposals from pre-EPID migration
[[eosio::action]]
void eparticlectr::prgpremigprp( uint32_t loop_limit ) {
    require_auth( MAINTENANCE_CONTRACT );

    // Get the proposal table
    propstblex proptable( _self, _self.value );

    // Loop through the old proposals 
    auto prop_it = proptable.begin();
    uint32_t count = 0;
    while(count < loop_limit && prop_it != proptable.end()) {

        // Delete the proposal.
        // Note that the erase() function increments the iterator, then gives it back after the erase is done
        if (prop_it->endtime <= 1597093134){
            prop_it = proptable.erase(prop_it);
        }
        else{
            prop_it++;
        }
        // Increase the count
        count++;
    }

}

// Manually return all stakes
[[eosio::action]]
void eparticlectr::stkretovrrde( uint32_t loop_limit ) {
    require_auth( MAINTENANCE_CONTRACT );

    // Get the stake table
    staketblex stakestable_extra( _self, _self.value );

    // Loop through the old stakes 
    auto stake_it = stakestable_extra.begin();
    uint32_t count = 0;
    while(count < loop_limit && stake_it != stakestable_extra.end()) {
        // Transfer back the IQ
        asset iqAssetPack = asset(int64_t(stake_it->amount * IQ_PRECISION_MULTIPLIER), IQSYMBOL);
        std::string memo = std::string("return stake #") + std::to_string(stake_it->id);
        action(
            permission_level{ _self, name("active") },
            TOKEN_CONTRACT, name("transfrextra"),
            std::make_tuple(_self, stake_it->user, iqAssetPack, memo, stake_it->proxied_for, std::string("return stake #") + std::to_string(stake_it->id), stake_it->extra_note )
        ).send();

        // Delete the stake.
        // Note that the erase() function increments the iterator, then gives it back after the erase is done
        stake_it = stakestable_extra.erase(stake_it);

        // Increase the count
        count++;
    }
}


// Place a vote using the IPFS hash
// Users have to trigger this action through the everipediaiq::epartvote action
[[eosio::action]]
void eparticlectr::vote( name voter, uint64_t proposal_id, bool approve, uint64_t amount, std::string comment, std::string memo ) {
    // Deprecated
    eosio::check(false, "vote is deprecated. Use voteextra instead");
    return;
}

// Place a vote using the IPFS hash
// Users have to trigger this action through the everipediaiq::epartvotex action
[[eosio::action]]
void eparticlectr::voteextra( name voter, uint64_t proposal_id, bool approve, uint64_t amount, std::string comment, std::string memo, std::string proxied_for, std::string extra_note ) {
    require_auth( _self );

    // validate inputs
    eosio::check( comment.size() < MAX_COMMENT_SIZE, "Comment must be less than 256 bytes" );
    eosio::check( memo.size() < MAX_MEMO_SIZE, "Memo must be less than 32 bytes" );
    eosio::check( proxied_for.size() <= 256, "proxied_for has more than 256 bytes" );
    eosio::check( extra_note.size() <= 256, "extra_note has more than 256 bytes" );

    // Check if proposal exists
    propstblex proptable( _self, _self.value );
    const auto& prop_it = proptable.get(proposal_id, "Proposal not found");

    // Verify voting is still in progress
    eosio::check( eosio::current_time_point().sec_since_epoch() < prop_it.endtime, "Voting period is over");
    eosio::check( !prop_it.finalized, "Proposal is finalized");

    // Create the stake object
    staketblex staketblobj(_self, _self.value);
    
    // This is needed to keep the stakes from the old and new tables separate
    std::string proposal_id_string = uint64ToString(proposal_id);
    uint64_t stake_id = staketblobj.available_primary_key();
    staketblobj.emplace( _self, [&]( auto& s ) {
        s.id = stake_id;
        s.user = voter;
        s.amount = amount;
        s.timestamp = eosio::current_time_point().sec_since_epoch();
        s.completion_time = eosio::current_time_point().sec_since_epoch() + STAKING_DURATION;
        s.proxied_for = proxied_for;
        s.extra_note = std::string("Proposal: ") + proposal_id_string;
    });

    // mark if this is the initial editor vote
    votestblex votetbl( _self, proposal_id );
    bool voterIsProposer = (votetbl.begin() == votetbl.end()); 
   
    // Store vote in DB
    votetbl.emplace( _self, [&]( auto& a ) {
         a.id = votetbl.available_primary_key();
         a.proposal_id = proposal_id;
         a.approve = approve;
         a.is_editor = voterIsProposer;
         a.amount = amount;
         a.voter = voter;
         a.timestamp = eosio::current_time_point().sec_since_epoch();
         a.stake_id = stake_id;
         a.memo = memo;
         a.proxied_for = proxied_for;
         a.extra_note = extra_note;
    });
}

// Logic for proposing an edit for an article
// Users have to trigger this action through the everipediaiq::epartpropose action
[[eosio::action]]
void eparticlectr::propose2( name proposer, std::string slug, ipfshash_t ipfs_hash, std::string lang_code, int64_t group_id, std::string comment, std::string memo ) {
    // Deprecated
    eosio::check(false, "propose2 is deprecated. Use proposeextra instead");
    return;
}


// Logic for proposing an edit for an article
// Users have to trigger this action through the everipediaiq::epartpropsex action
[[eosio::action]]
void eparticlectr::proposeextra( name proposer, std::string slug, ipfshash_t ipfs_hash, std::string lang_code, int64_t group_id, std::string comment, std::string memo, std::string proxied_for, std::string extra_note ) {
    require_auth( _self );

    // Table definition
    propstblex proptable( _self, _self.value );

    // Argument checks
    eosio::check( ipfs_hash.size() <= MAX_IPFS_SIZE, "IPFS hash is too long. MAX_IPFS_SIZE=46");
    eosio::check( ipfs_hash.size() >= MIN_IPFS_SIZE, "IPFS hash is too short. MIN_IPFS_SIZE=46");
    eosio::check( comment.size() < MAX_COMMENT_SIZE, "comment must be less than 256 bytes");
    eosio::check( memo.size() < MAX_MEMO_SIZE, "memo must be less than 32 bytes");
    eosio::check( slug.size() <= MAX_SLUG_SIZE, "slug must be less than 256 bytes");
    eosio::check( slug.size() >= MIN_SLUG_SIZE, "slug must be more than 1 byte");
    eosio::check( lang_code.size() <= MAX_LANG_CODE_SIZE, "lang code must be less than 7 bytes");
    eosio::check( slug.size() >= MIN_LANG_CODE_SIZE, "lang code must be more than 2 bytes");
    eosio::check( group_id >= -1, "group_id must be greater than -2. Specify -1 for auto-generated ID");
    eosio::check( proxied_for.size() <= 256, "proxied_for has more than 256 bytes" );
    eosio::check( extra_note.size() <= 256, "extra_note has more than 256 bytes" );

    // Wiki IDs are phased out
    int64_t wiki_id = -1;

    // Calculate proposal parameters
    uint32_t starttime = eosio::current_time_point().sec_since_epoch();
    uint32_t endtime = eosio::current_time_point().sec_since_epoch() + DEFAULT_VOTING_TIME;

    uint64_t proposal_id = proptable.available_primary_key();

    // Store the proposal
    proptable.emplace( _self, [&]( auto& p ) {
        p.id = proposal_id;
        p.wiki_id = wiki_id;
        p.slug = slug;
        p.group_id = group_id;
        p.lang_code = lang_code;
        p.ipfs_hash = ipfs_hash;
        p.proposer = proposer;
        p.starttime = starttime;
        p.endtime = endtime;
        p.memo = memo;
        p.finalized = false;
        p.proxied_for = proxied_for;
        p.extra_note = extra_note;
    });

    action(
        permission_level { _self, name("active") },
        _self, name("logpropinfex"),
        std::make_tuple( proposal_id, proposer, wiki_id, slug, ipfs_hash, lang_code, group_id, comment, memo, starttime, endtime, proxied_for, extra_note )
    ).send();

    // Place the default vote
    action(
        permission_level { _self , name("active") },
        _self, name("voteextra"),
        std::make_tuple( proposer, proposal_id, true, EDIT_PROPOSE_IQ_EPARTICLECTR, std::string("editor initial vote"), memo, proxied_for, extra_note )
    ).send();
}

[[eosio::action]]
void eparticlectr::finalize( uint64_t proposal_id ) {
    // Deprecated
    eosio::check(false, "Finalize is deprecated. Use finalizeextr instead");
    return;
}

[[eosio::action]]
void eparticlectr::finalizeextr( uint64_t proposal_id ) {
    // Verify proposal exists
    propstblex proptable( _self, _self.value );
    const auto& prop_it = proptable.get(proposal_id, "Proposal not found");

    // Verify voting period is complete
    eosio::check( eosio::current_time_point().sec_since_epoch() > prop_it.endtime, "Voting period is not over yet");

    // Make sure the proposal isn't finalized yet
    eosio::check( !prop_it.finalized, "Proposal is already finalized");

    // Retrieve votes from DB
    votestblex votetbl( _self, proposal_id );
    auto vote_it = votetbl.begin();
    eosio::check( vote_it != votetbl.end(), "No votes found for proposal");

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
    eosio::check( slash_ratio >= 0.0f && slash_ratio <= 1.0f, "Slash ratio out of bounds");

    rewardstblex rewardstable( _self, _self.value );
    staketblex staketable(_self, _self.value);

    // Slash / reward votes
    // Tally vote points
    uint64_t total_vote_points = 0;
    while(vote_it != votetbl.end() && istie == 0) {
        uint32_t extraSecsSlash = uint32_t((float)STAKING_DURATION * slash_ratio);
        
        // Refund winning editor stake immediately
        if (approved && vote_it->is_editor) {
            auto stake_it = staketable.find(vote_it->stake_id);
            if (stake_it != staketable.end()){
                staketable.modify( stake_it, same_payer, [&]( auto& a ) {
                    a.completion_time = eosio::current_time_point().sec_since_epoch();
                });
            }
        }
        // Reduce staking time for vote winners to 5 days
        else if (approved && !vote_it->is_editor) {
            auto stake_it = staketable.find(vote_it->stake_id);
            if (stake_it != staketable.end()){
                staketable.modify( stake_it, same_payer, [&]( auto& a ) {
                    a.completion_time = a.timestamp + WINNING_VOTE_STAKE_TIME;
                });
            }
        }

        
        // Slash losers
        if (vote_it->approve != approved) {
            auto stake_it = staketable.find(vote_it->stake_id);
            if (stake_it != staketable.end()){
                staketable.modify( stake_it, same_payer, [&]( auto& a ) {
                    a.completion_time += extraSecsSlash;
                });
            }

            action( 
                permission_level { _self, name("active") },
                _self, name("slashnotifex"),
                std::make_tuple( vote_it->voter, vote_it->amount, extraSecsSlash, vote_it->memo, vote_it->proxied_for, vote_it->extra_note )
            ).send();
        }
        // Reward the winners
        else {
            rewardstable.emplace( _self,  [&]( auto& a ) {
                a.id = rewardstable.available_primary_key();
                a.user = vote_it->voter;
                a.vote_points = vote_it->amount;
                if (approved && vote_it->is_editor)
                    a.edit_points = (yes_votes - no_votes);
                else
                    a.edit_points = 0;
                a.proposal_id = proposal_id;
                a.proposal_finalize_time = eosio::current_time_point().sec_since_epoch();
                a.proposal_finalize_period = uint32_t(eosio::current_time_point().sec_since_epoch() / REWARD_INTERVAL);
                a.proposalresult = approved;
                a.is_editor = vote_it->is_editor;
                a.is_tie = istie;
                a.memo = vote_it->memo;
                a.proxied_for = vote_it->proxied_for;
                a.extra_note = vote_it->extra_note;
            });
            total_vote_points += vote_it->amount;
        }
        vote_it++;
    }

    // Update rewards table
    uint64_t current_period = eosio::current_time_point().sec_since_epoch() / REWARD_INTERVAL;
    perrwdstblex perrewards( _self, _self.value );
    auto period_it = perrewards.find( current_period );
    uint64_t edit_points = approved ? (yes_votes - no_votes) : 0;
    if (period_it == perrewards.end()) {
        perrewards.emplace( _self, [&]( auto& p ) {
            p.period = current_period;
            p.curation_sum = total_vote_points;
            p.editor_sum = edit_points;
        });
    }
    else {
        perrewards.modify( period_it, same_payer, [&]( auto& p ) {
            p.curation_sum += total_vote_points;
            p.editor_sum += edit_points;
        });
    }

    // Log proposal result and new wiki id
    action(
        permission_level { _self, name("active") },
        _self, name("logpropres"),
        std::make_tuple( prop_it.id, approved, yes_votes, no_votes )
    ).send();

    // delete proposal if it's not the most current one
    // deleting the most current proposal screws up the ID auto-increment
    if (prop_it.id == proptable.available_primary_key() - 1) {
        eosio::print("MARKING PROPOSAL AS FINALIZED");
        proptable.modify( prop_it, same_payer, [&]( auto& p ) {
            p.finalized = true;
        });
    }
    else {
        eosio::print("ERASING PROPOSAL");
        proptable.erase( prop_it );
    }
}


[[eosio::action]]
void eparticlectr::rewardclmid ( uint64_t reward_id ) {
    // Deprecated
    eosio::check(false, "rewardclmid is deprecated. Use rewrdclmidex instead");
    return;
}

[[eosio::action]]
void eparticlectr::rewrdclmidex ( uint64_t reward_id ) {
    // prep tables
    perrwdstblex perrewards( _self, _self.value );
    rewardstblex rewardstable( _self, _self.value );

    // check if user rewards exist
    const auto& reward_it = rewardstable.get(reward_id, "Reward doesn't exist");

    // Make sure period is complete before processing
    uint64_t reward_period = reward_it.proposal_finalize_period;
    uint64_t current_period = eosio::current_time_point().sec_since_epoch() / REWARD_INTERVAL;
    const auto& period_it = perrewards.get(reward_period, "Period should exist");
    eosio::check(current_period > reward_period, "Reward period must complete before claiming rewards");

    // Send curation reward
    int64_t curation_reward = reward_it.vote_points * PERIOD_CURATION_REWARD / period_it.curation_sum;
    eosio::check(curation_reward <= PERIOD_CURATION_REWARD, "System logic error. Too much IQ calculated for curation reward.");
    if (curation_reward == 0) // Minimum reward of 0.001 IQ to prevent unclaimable rewards
        curation_reward = 1;
    asset curation_quantity = asset(curation_reward, IQSYMBOL);
    std::string memo = std::string("Curation IQ reward:" + reward_it.memo);
    action(
        permission_level { TOKEN_CONTRACT, name("active") },
        TOKEN_CONTRACT, name("issueextra"),
        std::make_tuple( reward_it.user, curation_quantity, memo, reward_it.proxied_for, reward_it.extra_note )
    ).send();

    // Send editor reward
    if (reward_it.is_editor && reward_it.proposalresult) {
        int64_t editor_reward = reward_it.edit_points * PERIOD_EDITOR_REWARD / period_it.editor_sum;
        if (editor_reward == 0) // Minimum reward of 0.001 IQ to prevent unclaimable rewards
            editor_reward = 1;
        eosio::check(editor_reward <= PERIOD_EDITOR_REWARD, "System logic error. Too much IQ calculated for editor reward.");
        asset editor_quantity = asset(editor_reward, IQSYMBOL);
        std::string memo = std::string("Editor IQ reward:" + reward_it.memo);
        action(
            permission_level { TOKEN_CONTRACT, name("active") },
            TOKEN_CONTRACT, name("issueextra"),
            std::make_tuple( reward_it.user, editor_quantity, memo, reward_it.proxied_for, reward_it.extra_note )
        ).send();
    }

    // delete reward after claiming
    rewardstable.erase( reward_it );
}

[[eosio::action]]
void eparticlectr::oldvotepurge( uint64_t proposal_id, uint32_t loop_limit ) {
    // Deprecated
    eosio::check(false, "oldvotepurge is deprecated. Use oldvtprgeex instead");
    return;
}

[[eosio::action]]
void eparticlectr::oldvteprgeex( uint64_t proposal_id, uint32_t loop_limit ) {
    // Get the proposal object
    propstblex proptable( _self, _self.value );
    auto prop_it = proptable.find(proposal_id);
    eosio::check( prop_it == proptable.end() || prop_it->finalized, "Proposal not finalized yet!");

    // If it is an undeleted proposal, make sure it's no longer the most current proposal
    // so the auto-increment doesn't get screwed up
    // If it isn't delete it
    if ( prop_it != proptable.end() ) {
        eosio::check( prop_it->id != proptable.available_primary_key() - 1, "Cannot delete most recent proposal" );
        proptable.erase( prop_it );
    }

    // Retrieve votes from DB
    votestblex votetbl( _self, proposal_id );
    auto vote_it = votetbl.begin();
    eosio::check( vote_it != votetbl.end(), "No votes found for proposal!");

    // Free up RAM
    uint32_t count = 0;
    while(count < loop_limit && vote_it != votetbl.end()) {
        vote_it = votetbl.erase(vote_it);
        count++;
    }
}

[[eosio::action]]
void eparticlectr::mkreferendum( uint64_t proposal_id ) {
    require_auth( _self );
    propstbl proptable( _self, _self.value );

    // Validate proposal
    const auto& prop_it = proptable.get(proposal_id, "Proposal not found");
    eosio::check( !prop_it.finalized, "Proposal is finalized");
    eosio::check( prop_it.endtime - prop_it.starttime < REFERENDUM_DURATION_SECS, "Proposal has already been marked as a referendum");

    require_auth(prop_it.proposer);

    proptable.modify( prop_it, same_payer, [&]( auto& p ) {
        p.endtime = eosio::current_time_point().sec_since_epoch() + REFERENDUM_DURATION_SECS;
    });
}

[[eosio::action]]
void eparticlectr::slashnotify( name slashee, uint64_t amount, uint32_t seconds, std::string memo ){
    require_auth( _self );
}

[[eosio::action]]
void eparticlectr::slashnotifex( name slashee, uint64_t amount, uint32_t seconds, std::string memo, std::string proxied_for, std::string extra_note ){
    require_auth( _self );
}

[[eosio::action]]
void eparticlectr::logpropres( uint64_t proposal_id, bool approved, uint64_t yes_votes, uint64_t no_votes ) {
    require_auth( _self );
}

[[eosio::action]]
void eparticlectr::logpropinfo( uint64_t proposal_id, name proposer, uint64_t wiki_id, std::string slug, ipfshash_t ipfs_hash, std::string lang_code, uint64_t group_id, std::string comment, std::string memo, uint32_t starttime, uint32_t endtime) {
    require_auth( _self );
}

[[eosio::action]]
void eparticlectr::logpropinfex( uint64_t proposal_id, name proposer, uint64_t wiki_id, std::string slug, ipfshash_t ipfs_hash, std::string lang_code, uint64_t group_id, std::string comment, std::string memo, uint32_t starttime, uint32_t endtime, std::string proxied_for, std::string extra_note) {
    require_auth( _self );
}

[[eosio::action]]
void eparticlectr::curatelist( name user, std::string title, std::string description, std::vector<std::string> wikis, bool ranked ) {
    require_auth(user);
    check(title.size() < 100, "Title is too long. Max 100 chars");
    check(description.size() < 300, "Description is too long. Max 300 chars");
}


[[eosio::action]]
void eparticlectr::migratestkes( uint32_t loop_limit ) {
    require_auth( MAINTENANCE_CONTRACT );

    // Initialize the two tables 
    staketbl stakestable( _self, _self.value );
    staketblex stakestable_extra( _self, _self.value );

    // Loop through the old stakes 
    auto stakes_it = stakestable.begin();
    uint32_t count = 0;
    while(count < loop_limit && stakes_it != stakestable.end()) {
        stakestable_extra.emplace( _self, [&]( auto& s ) {
            s.id = stakes_it->id;
            s.user = stakes_it->user;
            s.amount = stakes_it->amount;
            s.timestamp = stakes_it->timestamp;
            s.completion_time = stakes_it->completion_time;
            s.proxied_for = "";
            s.extra_note = "";
        });

        // Delete the old stakes
        stakes_it = stakestable.erase(stakes_it);

        // Increase the count
        count++;
    }
}

[[eosio::action]]
void eparticlectr::migratevotes( uint32_t loop_limit ) {
    require_auth( MAINTENANCE_CONTRACT );

    // Initialize the two tables 
    votestbl votestable( _self, _self.value );
    votestblex votestable_extra( _self, _self.value );

    // Loop through the old votes 
    auto votes_it = votestable.begin();
    uint32_t count = 0;
    while(count < loop_limit && votes_it != votestable.end()) {
        // Copy the old vote over to the new format
        votestable_extra.emplace( _self, [&]( auto& v ) {
            v.id = votes_it->id;
            v.proposal_id = votes_it->proposal_id;
            v.approve = votes_it->approve;
            v.is_editor = votes_it->is_editor;
            v.amount = votes_it->amount;
            v.voter = votes_it->voter;
            v.timestamp = votes_it->timestamp;
            v.stake_id = votes_it->stake_id;
            v.memo = votes_it->memo;
            v.proxied_for = "";
            v.extra_note = "";
        });

        // Delete the old proposal
        votes_it = votestable.erase(votes_it);

        // Increase the count
        count++;
    }
}

[[eosio::action]]
void eparticlectr::migrateprops( uint32_t loop_limit ) {
    require_auth( MAINTENANCE_CONTRACT );

    // Initialize the two tables 
    propstbl propstable( _self, _self.value );
    propstblex propstable_extra( _self, _self.value );

    // Loop through the old proposals 
    auto props_it = propstable.begin();
    uint32_t count = 0;
    while(count < loop_limit && props_it != propstable.end()) {
        // Copy the old proposal over to the new format
        propstable_extra.emplace( _self, [&]( auto& p ) {
            p.id = props_it->id;
            p.wiki_id = props_it->wiki_id;
            p.slug = props_it->slug;
            p.group_id = props_it->group_id;
            p.lang_code = props_it->lang_code;
            p.ipfs_hash = props_it->ipfs_hash;
            p.proposer = props_it->proposer;
            p.starttime = props_it->starttime;
            p.endtime = props_it->endtime;
            p.memo = props_it->memo;
            p.finalized = props_it->finalized;
            p.proxied_for = "";
            p.extra_note = "";
        });

        // Delete the old proposal
        props_it = propstable.erase(props_it);

        // Increase the count
        count++;
    }

}

[[eosio::action]]
void eparticlectr::migraterwds( uint32_t loop_limit ) {
    require_auth( MAINTENANCE_CONTRACT );

    // Initialize the two tables 
    rewardstbl rewardstable( _self, _self.value );
    rewardstblex rewardstable_extra( _self, _self.value );

    // Return early if nothing to move
    if (rewardstable.begin() == rewardstable.end()){
        eosio::print("ALL REWARDS HAVE BEEN MIGRATED");
        return;
    }

    // Loop through the old rewards 
    auto rewards_it = rewardstable.begin();
    uint32_t count = 0;
    while(count < loop_limit && rewards_it != rewardstable.end()) {
        rewardstable_extra.emplace( _self, [&]( auto& r ) {
            r.id = rewards_it->id;
            r.user = rewards_it->user;
            r.vote_points = rewards_it->vote_points;
            r.edit_points = rewards_it->edit_points;
            r.proposal_id = rewards_it->proposal_id;
            r.proposal_finalize_time = rewards_it->proposal_finalize_time;
            r.proposal_finalize_period = rewards_it->proposal_finalize_period;
            r.proposalresult = rewards_it->proposalresult;
            r.is_editor = rewards_it->is_editor;
            r.is_tie = rewards_it->is_tie;
            r.memo = rewards_it->memo;
            r.proxied_for = "";
            r.extra_note = "";
        });

        // Delete the old reward
        rewards_it = rewardstable.erase(rewards_it);

        // Increase the count
        count++;
    }

}




EOSIO_DISPATCH( eparticlectr, (brainclmid)(brainclmidex)(stkretovrrde)(prgpremigrwd)(prgpremigprp)(slashnotify)(slashnotifex)(finalize)(finalizeextr)(oldvotepurge)(oldvteprgeex)(propose2)(proposeextra)(rewardclmid)(rewrdclmidex)(vote)(voteextra)(logpropres)(migratestkes)(migratevotes)(migrateprops)(migraterwds)(logpropinfo)(logpropinfex)(mkreferendum)(curatelist) )
