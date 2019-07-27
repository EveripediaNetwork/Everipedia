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

    // Transfer back the IQ
    asset stake_quantity = asset(int64_t(stake_it->amount * IQ_PRECISION_MULTIPLIER), IQSYMBOL);
    stats statstbl( _self, stake_it->user.value );
    eosio_assert(statstbl.begin() != statstbl.end(), "PROTOCOL ERROR: This user should have a balance");
    auto stat_it = statstbl.begin();
    statstbl.modify( stat_it, same_payer, [&]( auto& g ) {
        g.available += curation_quantity;
    });

    // Delete the stake.
    // Note that the erase() function increments the iterator, then gives it back after the erase is done
    stake_it = staketable.erase(stake_it);
}


// Place a vote using the IPFS hash
// Users have to trigger this action through the everipediaiq::epartvote action
[[eosio::action]]
void eparticlectr::vote( name voter, uint64_t proposal_id, bool approve, uint64_t amount, std::string comment, std::string memo ) {
    require_auth( voter );

    // validate inputs
    eosio_assert(comment.size() < MAX_COMMENT_SIZE, "Comment must be less than 256 bytes");
    eosio_assert(memo.size() < MAX_MEMO_SIZE, "Memo must be less than 32 bytes");

    // Check if proposal exists
    propstbl proptable( _self, _self.value );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "Proposal not found" );

    // Verify voting is still in progress
    eosio_assert( now() < prop_it->endtime, "Voting period is over");
    eosio_assert( !prop_it->finalized, "Proposal is finalized");

    // Verify balances are available
    stats statstbl( _self, voter.value );
    auto stat_it = statstbl.begin();
    eosio_assert(statstbl.begin() != statstbl.end(), "Balance does not exist for user");
    eosio_assert(stat_it->available.amount >= amount * IQ_PRECISION_MULTIPLIER, "not enough available IQ to vote");
    eosio_assert(amount > 0, "PROTOCOL ERROR: Why is there a negative vote amount?");

    // Subtract amount from balance
    asset voting_iq = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    statstbl.modify( stat_it, same_payer, [&]( auto& g ) {
        g.available -= voting_iq;
        g.staked += voting_iq;
    });

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
         a.memo = memo;
    });
}

// Logic for proposing an edit for an article
// Users have to trigger this action through the everipediaiq::epartpropose action
[[eosio::action]]
void eparticlectr::propose2( name proposer, std::string slug, ipfshash_t ipfs_hash, std::string lang_code, int64_t group_id, std::string comment, std::string memo ) {
    require_auth( proposer );

    // Table definitions
    wikistbl wikitbl( _self, _self.value );
    propstbl proptable( _self, _self.value );

    // Argument checks
    eosio_assert( slug != "", "slug cannot be empty");
    eosio_assert( slug.size() <= MAX_SLUG_SIZE, "slug must be max 256 bytes");
    eosio_assert( ipfs_hash.size() <= MAX_IPFS_SIZE, "IPFS hash is too long. MAX_IPFS_SIZE=46");
    eosio_assert( ipfs_hash.size() >= MIN_IPFS_SIZE, "IPFS hash is too short. MIN_IPFS_SIZE=46");
    eosio_assert( lang_code.size() <= MAX_LANG_CODE_SIZE, "lang_code must be max 7 bytes");
    eosio_assert( lang_code.size() >= MIN_LANG_CODE_SIZE, "lang_code must be atleast 2 characters");
    eosio_assert( comment.size() < MAX_COMMENT_SIZE, "comment must be less than 256 bytes");
    eosio_assert( memo.size() < MAX_MEMO_SIZE, "memo must be less than 32 bytes");
    eosio_assert( group_id >= -1, "group_id must be greater than -2. Specify -1 for auto-generated ID");

    // check for duplicate slug + lang. grab id if it exists.
    // otherwise set a new ID for the wiki
    // group id matches wiki id if set to -1
    auto sluglang_idx = wikitbl.get_index<name("uniqsluglang")>();
    auto existing_wiki_it = sluglang_idx.find(sha256_slug_lang(slug, lang_code));
    int64_t wiki_id;
    if (existing_wiki_it != sluglang_idx.end())
        wiki_id = existing_wiki_it->id;
    else
        wiki_id = wikitbl.available_primary_key(); 
    if (group_id == -1) group_id = wiki_id; 

    // Place new wikis into the table
    if (existing_wiki_it == sluglang_idx.end()) {
        wikitbl.emplace( _self,  [&]( auto& a ) {
            a.id = wiki_id;
            a.slug = slug;
            a.lang_code = lang_code;
            a.group_id = group_id;
        });
    }

    // Calculate proposal parameters
    uint64_t proposal_id = proptable.available_primary_key();
    uint32_t starttime = now();
    uint32_t endtime = now() + DEFAULT_VOTING_TIME;

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
    });

    action(
        permission_level { _self, name("active") },
        _self, name("logpropinfo"),
        std::make_tuple( proposal_id, proposer, wiki_id, slug, ipfs_hash, lang_code, group_id, comment, memo, starttime, endtime )
    ).send();

    // Place the default vote
    action(
        permission_level { proposer , name("active") },
        _self, name("vote"),
        std::make_tuple( proposer, proposal_id, true, EDIT_PROPOSE_IQ, std::string("editor initial vote"), memo )
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
    staketbl staketable(_self, _self.value);

    // Slash / reward votes
    // Tally vote points
    uint64_t total_vote_points = 0;
    while(vote_it != votetbl.end() && istie == 0) {
        uint32_t extraSecsSlash = uint32_t((float)STAKING_DURATION * slash_ratio);
        
        // Refund winning editor stake immediately
        if (approved && vote_it->is_editor) {
            auto stake_it = staketable.find(vote_it->stake_id);
            staketable.modify( stake_it, same_payer, [&]( auto& a ) {
                a.completion_time = now();
            });
        }
        
        // Slash losers
        if (vote_it->approve != approved) {
            auto stake_it = staketable.find(vote_it->stake_id);
            staketable.modify( stake_it, same_payer, [&]( auto& a ) {
                a.completion_time += extraSecsSlash;
            });

            action( 
                permission_level { _self, name("active") },
                _self, name("slashnotify"),
                std::make_tuple( vote_it->voter, vote_it->amount, extraSecsSlash, vote_it->memo )
            ).send();
        }
        // Reward the winners
        else{
            rewardstable.emplace( _self,  [&]( auto& a ) {
                a.id = rewardstable.available_primary_key();
                a.user = vote_it->voter;
                a.vote_points = vote_it->amount;
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
                a.memo = vote_it->memo;
            });
            total_vote_points += vote_it->amount;
        }
        vote_it++;
    }

    // Update rewards table
    uint64_t current_period = now() / REWARD_INTERVAL;
    perrwdstbl perrewards( _self, _self.value );
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


    // Insert wiki into DB
    if (approved) {
        wikistbl wikitbl( _self, _self.value );
        auto wiki_it = wikitbl.find( prop_it->wiki_id );
        eosio_assert(wiki_it != wikitbl.end(), "PROTOCOL ERROR: An ID should already exist for this wiki");

        wikitbl.modify( wiki_it, _self, [&]( auto& a ) {
            a.slug = prop_it->slug;
            a.group_id = prop_it->group_id;
            a.lang_code = prop_it->lang_code;
            a.ipfs_hash = prop_it->ipfs_hash;
        });
    }

    // Log proposal result and new wiki id
    action(
        permission_level { _self, name("active") },
        _self, name("logpropres"),
        std::make_tuple( prop_it->id, approved, yes_votes, no_votes )
    ).send();

    // delete proposal if it's not the most current one
    // deleting the most current proposal screws up the ID auto-increment
    if (prop_it->id == proptable.available_primary_key() - 1)
        proptable.modify( prop_it, same_payer, [&]( auto& p ) {
            p.finalized = true;
        });
    else
        proptable.erase( prop_it );
}

void eparticlectr::deposit( name from, name to, asset quantity, std::string memo ) {
    if (from == _self) return; // sending tokens, ignore
    if (from == name("everipediaiq")) return; // sending rewards, ignore

    auto symbol = quantity.symbol;
    eosio_assert(to == _self, "stop trying to hack the contract");
    eosio_assert(symbol.is_valid(), "invalid symbol name");
    eosio_assert(symbol == IQSYMBOL, "This contract only accepts IQ");
    eosio_assert(quantity.is_valid(), "invalid quantity");
    eosio_assert(quantity.amount > 0, "must deposit positive quantity");
    eosio_assert(memo.size() < 128, "deposit memo has max length 128");

    // Determine deposit type
    // 1. Delegate IQ
    // 2. IQ reward 
    bool is_delegated = false;
    int first_colon = memo.find(":");
    std::string deposit_type = memo.substr(0, first_colon);
    eosio_assert( deposit_type == "delegate", "Deposit must specify delegation in the format delegate:myeosaccount" );

    // IQ delegation
    std::string account_string = memo.substr(first_colon + 1);
    eosio_assert(account_string.size() <= 12, "delegated account is invalid");

    name guild = name(account_string);
    eosio_assert(is_account(guild), "delegate account does not exist");
    
    // initialize stats if it doesn't exist
    stats statstbl( _self, guild.value );
    if (statstbl.begin() == statstbl.end()) {
        statstbl.emplace( _self, [&]( auto& g ){
            g.available = asset(0, IQSYMBOL);
            g.staked = asset(0, IQSYMBOL);
            g.total_shares = 0;
        });
    }
    auto stat_it = statstbl.begin();

    // calculate share allocation
    eosio_assert(quantity.amount % IQ_PRECISION_MULTIPLIER == 0, "must send a whole number of IQ");
    uint64_t shares;
    if (stat_it->total_shares == 0) {
        shares = quantity.amount / IQ_PRECISION_MULTIPLIER; // shares = (whole IQ sent)
    }
    else {
        uint64_t guild_balance = stat_it->available.amount + stat_it->staked.amount;
        uint64_t share_price = guild_balance / stat_it->total_shares;
        shares = quantity.amount / share_price;
    }

    // update guild balance
    statstbl.modify( stat_it, same_payer, [&]( auto& g ){
        g.available += quantity;
        g.total_shares += shares;
    });

    // update user shares
    accounts acctstbl( _self, guild.value );
    auto account_it = acctstbl.find( from.value );
    if (account_it == acctstbl.end()) {
        acctstbl.emplace( _self, [&]( auto& a ){
            a.delegator = from;
            a.shares = shares;
        });
    }
    else {
        acctstbl.modify( account_it, same_payer, [&]( auto& a ){
            a.shares += shares;
        });
    }
}


[[eosio::action]]
void eparticlectr::withdraw( name withdrawer, name guild, uint64_t shares ) {
    stats statstbl( _self, guild.value );
    eosio_assert(statstbl.begin() != statstbl.end(), "No available balance to withdraw");
    auto stat_it = statstbl.begin();
    
    accounts acctstbl( _self, guild.value );
    auto account_it = acctstbl.find( withdrawer.value );
    eosio_assert(account_it != acctstbl.end(), "user does not have shares in this guild");
    eosio_assert(shares <= account_it->shares, "user is attempting to withdraw too many shares");
    eosio_assert(now() > account_it->last_modified + MINIMUM_DELEGATION_TIME, "cannot withdraw within 7 days of a deposit");

    // calculate share value
    uint64_t guild_balance = stat_it->available.amount + stat_it->staked.amount;
    uint64_t share_price = guild_balance / stat_it->total_shares;
    uint64_t iq_amount = share_price * account_it->shares;
    asset iq_withdraw = asset(iq_amount, IQSYMBOL);

    eosio_assert(stat_it->available < iq_withdraw, "available balance does not cover attempted withdrawal");
    
    // send IQ
    action(
        permission_level{ _self , name("active") }, 
        _self , name("transfer"),
        std::make_tuple( _self, account_it->delegator, iq_withdraw, std::string("withdrawing shares from guild"))
    ).send();

    // share accounting
    // delete entry if all shares are withdrawn
    if (account_it->shares == shares)
        acctstbl.erase( account_it );
    else {
        acctstbl.modify( account_it, same_payer, [&]( auto& a ){
            a.shares -= shares;         
        });
    }
}


[[eosio::action]]
void eparticlectr::rewardclmid ( uint64_t reward_id ) {
    // prep tables
    perrwdstbl perrewards( _self, _self.value );
    rewardstbl rewardstable( _self, _self.value );

    // check if user rewards exist
    auto reward_it = rewardstable.find( reward_id );
    eosio_assert( reward_it != rewardstable.end(), "reward doesn't exist in database");

    // Make sure period is complete before processing
    uint64_t reward_period = reward_it->proposal_finalize_period;
    uint64_t current_period = now() / REWARD_INTERVAL;
    auto period_it = perrewards.find( reward_period );
    eosio_assert(period_it != perrewards.end(), "PROTOCOL ERROR: This period should exist");
    eosio_assert(current_period > reward_period, "Reward period must complete before claiming rewards");

    // Issue curation reward
    int64_t curation_reward = reward_it->vote_points * PERIOD_CURATION_REWARD / period_it->curation_sum;
    eosio_assert(curation_reward <= PERIOD_CURATION_REWARD, "System logic error. Too much IQ calculated for curation reward.");
    if (curation_reward == 0) // Minimum reward of 0.001 IQ to prevent unclaimable rewards
        curation_reward = 1;
    asset curation_quantity = asset(curation_reward, IQSYMBOL);
    std::string memo = std::string("Curation IQ reward:" + reward_it->user.to_string() + ":" + reward_it->memo);
    action(
        permission_level { TOKEN_CONTRACT, name("active") },
        TOKEN_CONTRACT, name("issue"),
        std::make_tuple( _self, curation_quantity, memo )
    ).send();

    // Add curation reward to available balance
    stats statstbl( _self, reward_it->user.value );
    eosio_assert(statstbl.begin() != statstbl.end(), "PROTOCOL ERROR: This user should have a balance");
    auto stat_it = statstbl.begin();
    statstbl.modify( stat_it, same_payer, [&]( auto& g ) {
        g.available += curation_quantity;
    });

    // Calculate editor reward if needed
    if (reward_it->is_editor && reward_it->proposalresult) {
        int64_t editor_reward = reward_it->edit_points * PERIOD_EDITOR_REWARD / period_it->editor_sum;
        if (editor_reward == 0) // Minimum reward of 0.001 IQ to prevent unclaimable rewards
            editor_reward = 1;
        eosio_assert(editor_reward <= PERIOD_EDITOR_REWARD, "System logic error. Too much IQ calculated for editor reward.");
        asset editor_quantity = asset(editor_reward, IQSYMBOL);
        std::string memo = std::string("Editor IQ reward:" + reward_it->user.to_string() + ":" + reward_it->memo);
        
        // Issue editor reward
        action(
            permission_level { TOKEN_CONTRACT, name("active") },
            TOKEN_CONTRACT, name("issue"),
            std::make_tuple( _self, editor_quantity, memo )
        ).send();
        
        // Add editor reward to available balance
        statstbl.modify( stat_it, same_payer, [&]( auto& g ) {
            g.available += editor_quantity;
        });
    }

    // delete reward after claiming
    rewardstable.erase( reward_it );
}

[[eosio::action]]
void eparticlectr::oldvotepurge( uint64_t proposal_id, uint32_t loop_limit ) {
    // Get the proposal object
    propstbl proptable( _self, _self.value );
    auto prop_it = proptable.find(proposal_id);
    eosio_assert( prop_it == proptable.end() || prop_it->finalized, "Proposal not finalized yet!");

    // If it is an undeleted proposal, make sure it's no longer the most current proposal
    // so the auto-increment doesn't get screwed up
    // If it isn't delete it
    if ( prop_it != proptable.end() ) {
        eosio_assert( prop_it->id != proptable.available_primary_key() - 1, "Cannot delete most recent proposal" );
        proptable.erase( prop_it );
    }

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
void eparticlectr::mkreferendum( uint64_t proposal_id ) {
    propstbl proptable( _self, _self.value );

    // Validate proposal
    auto prop_it = proptable.find(proposal_id);
    eosio_assert( prop_it != proptable.end(), "Proposal does not exist");
    eosio_assert( !prop_it->finalized, "Proposal is finalized");
    eosio_assert( prop_it->endtime - prop_it->starttime < REFERENDUM_DURATION_SECS, "Proposal has already been marked as a referendum");

    require_auth(prop_it->proposer);

    proptable.modify( prop_it, same_payer, [&]( auto& p ) {
        p.endtime = now() + REFERENDUM_DURATION_SECS;
    });
}

[[eosio::action]]
void eparticlectr::slashnotify( name slashee, uint64_t amount, uint32_t seconds, std::string memo ){
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

extern "C" void apply(uint64_t receiver, uint64_t code, uint64_t action)
{
    auto _self = receiver;
    if (code == name("everipediaiq").value && action == name("transfer").value)
    {
        eosio::execute_action(
            eosio::name(receiver), eosio::name(code), &eparticlectr::deposit
        );
    }
    else if (code == _self)
    {
        switch (action) {
            EOSIO_DISPATCH_HELPER( eparticlectr, (brainclmid)(slashnotify)(finalize)(oldvotepurge)(propose2)(rewardclmid)(vote)(logpropres)(logpropinfo)(mkreferendum)(withdraw) )
        }
    }
}
