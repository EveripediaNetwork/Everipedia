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

// Increase the boost amount for an article
// Users have to trigger this action through the everipediaiq::epartboost action
[[eosio::action]]
void eparticlectr::boostinvest( name booster, uint64_t amount, std::string slug, std::string lang_code ){
    require_auth( _self );

    // Initialize the variable
    int64_t total_boost = 0;

    // Update the booststbl table, or create it if an existing boost isn't already there
    booststbl articleboosts( _self, _self.value );
    auto boost_it = articleboosts.find( sha256_slug_lang_name(slug, lang_code, booster) );

    // Create the new boost entry if it doesn't exist
    if (boost_it == articleboosts.end()) {
        total_boost = amount;
        articleboosts.emplace( _self, [&]( auto& b ) {
            b.id = articleboosts.available_primary_key();
            b.slug = slug;
            b.lang_code = lang_code;
            b.booster = booster;
            b.amount = amount;
            b.timestamp = eosio::current_time_point().sec_since_epoch();
        });
    }
    else {
        total_boost = boost_it->amount + amount;
        articleboosts.modify( boost_it, _self, [&]( auto& b ) {
            b.amount = total_boost;
            b.timestamp = eosio::current_time_point().sec_since_epoch();
        });
    }

}

// Transfer an article's boost amount (fully or partially) to another account and wiki
[[eosio::action]]
void eparticlectr::boosttxfr( 
    name booster, 
    name target, 
    uint64_t amount, 
    std::string src_slug,
    std::string src_lang_code,
    std::string dest_slug, 
    std::string dest_lang_code 
){
    require_auth( booster );
    require_recipient( target );

    // Initialize the source boost table
    booststbl articleboosts( _self, _self.value );
    auto boost_idx = articleboosts.get_index<name("sluglangname")>();
    auto boost_it_src = boost_idx.find( sha256_slug_lang_name(src_slug, src_lang_code, booster) );

    // Checks
    eosio::check(boost_it_src != boost_idx.end(), "Source boost does not exist");
    eosio::check(boost_it_src->timestamp - eosio::current_time_point().sec_since_epoch() >= BOOST_TRANSFER_WAITING_PERIOD, "You must wait until the boost is eligible to be transferred!");
    eosio::check(boost_it_src->amount >= amount, "Not enough boost to transfer!");
    eosio::check(boost_it_src->booster == booster, "Only owner can transfer boost");

    // Initialize the target boost table
    auto boost_it_tgt = boost_idx.find( sha256_slug_lang_name(dest_slug, dest_lang_code, target) );

    // Entire boost is transferred
    if (boost_it_src->amount == amount) {
        // Erase the entry for the source boost
        boost_idx.erase( boost_it_src );
    }
    // Boost is partially transferred
    else {
        // Subtract the source's specified boost amount
        boost_idx.modify( boost_it_src, _self, [&]( auto& b ) {
            b.amount = boost_it_src->amount - amount;
            b.timestamp = eosio::current_time_point().sec_since_epoch();
        });
    }
        
    // Add the source's boost to the target
    // Create the new target boost entry if it doesn't exist
    if (boost_it_tgt == boost_idx.end()) {
        // Set the target's boost iterator to the new entry
        articleboosts.emplace( _self, [&]( auto& b ) {
            b.id = articleboosts.available_primary_key();
            b.slug = dest_slug;
            b.lang_code = dest_lang_code;
            b.booster = target;
            b.amount = amount;
            b.timestamp = eosio::current_time_point().sec_since_epoch();
        });
    }
    // Or add to the target's existing boost
    else{
        boost_idx.modify( boost_it_tgt, _self, [&]( auto& b ) {
            b.amount = boost_it_tgt->amount + amount;
            b.timestamp = eosio::current_time_point().sec_since_epoch();
        });
    }
}

// Redeem IQ, with a specific stake specified
[[eosio::action]]
void eparticlectr::brainclmid( uint64_t stakeid ) {

    // Get the stakes
    staketbl staketable(_self, _self.value);
    auto stake_it = staketable.find(stakeid);
    eosio::check( stake_it != staketable.end(), "Stake does not exist in database");

    // See if the stake is complete
    eosio::check( eosio::current_time_point().sec_since_epoch() > stake_it->completion_time, "Staking period not over yet");

    // Transfer back the IQ
    asset stake_quantity = asset(int64_t(stake_it->amount * IQ_PRECISION_MULTIPLIER), IQSYMBOL);
    stats statstbl( _self, stake_it->user.value );
    eosio::check(statstbl.begin() != statstbl.end(), "PROTOCOL ERROR: This user should have a balance");
    auto stat_it = statstbl.begin();
    statstbl.modify( stat_it, same_payer, [&]( auto& g ) {
        g.staked -= stake_quantity;
        g.available += stake_quantity;
    });

    // Delete the stake.
    // Note that the erase() function increments the iterator, then gives it back after the erase is done
    stake_it = staketable.erase(stake_it);
}


// Place a vote using the IPFS hash
// Users have to trigger this action through the everipediaiq::epartvote action
[[eosio::action]]
void eparticlectr::vote( name voter, uint64_t proposal_id, bool approve, uint64_t amount, std::string comment, std::string memo ) {
    votestbl votetbl( _self, proposal_id );

    // the initial vote comes from the propose2 action, so to prevent permission
    // issues, it is self-signed by the contract
    bool is_initial_vote = (comment == std::string("editor initial vote"));
    if (is_initial_vote) {
        eosio::check( amount == EDIT_PROPOSE_IQ_EPARTICLECTR, "inital vote must be 50 IQ");
        eosio::check( votetbl.begin() == votetbl.end(), "PROTOCOL ERROR: Votes already exist. This should be the initial vote");
        require_auth( _self );
    }
    // all votes except the intial vote come directly from the user
    // and require their signature
    else
        require_auth( voter );

    // validate inputs
    eosio::check(comment.size() < MAX_COMMENT_SIZE, "Comment must be less than 256 bytes");
    eosio::check(memo.size() < MAX_MEMO_SIZE, "Memo must be less than 32 bytes");

    // Check if proposal exists
    propstbl proptable( _self, _self.value );
    auto prop_it = proptable.find( proposal_id );
    eosio::check( prop_it != proptable.end(), "Proposal not found" );

    // Verify voting is still in progress
    eosio::check( eosio::current_time_point().sec_since_epoch() < prop_it->endtime, "Voting period is over");
    eosio::check( !prop_it->finalized, "Proposal is finalized");

    // Initialize the boost table
    booststbl articleboosts( _self, _self.value );
    auto boost_idx = articleboosts.get_index<name("sluglangname")>();
    auto boost_it = boost_idx.find( sha256_slug_lang_name(prop_it->slug, prop_it->lang_code, voter) );

    // Default boost is 1 (i.e. no boost)
    float boost_multiplier = 1.0;
    if (boost_it != boost_idx.end()) {
        boost_multiplier = eparticlectr::get_boost_multiplier(boost_it->amount);
        std::string multiplier_string = std::to_string(boost_multiplier) + std::string("x");
        std::string debug_msg = std::string("Multiplying vote by ") + multiplier_string + std::string(" due to ") + std::to_string(boost_it->amount) + std::string("IQ boost present");
        eosio::print(debug_msg);
    } 

    // Verify balances are available
    stats statstbl( _self, voter.value );
    auto stat_it = statstbl.begin();
    eosio::check(statstbl.begin() != statstbl.end(), "Balance does not exist for user");
    eosio::check(stat_it->available.amount >= amount * IQ_PRECISION_MULTIPLIER, "not enough available IQ to vote");
    eosio::check(amount > 0, "PROTOCOL ERROR: Why is there a negative vote amount?");

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
        s.timestamp = eosio::current_time_point().sec_since_epoch();
        s.completion_time = eosio::current_time_point().sec_since_epoch() + STAKING_DURATION;
    });

    // Store vote in DB
    votetbl.emplace( _self, [&]( auto& a ) {
         a.id = votetbl.available_primary_key();
         a.proposal_id = proposal_id;
         a.approve = approve;
         a.is_editor = is_initial_vote;
         a.amount = round(amount * boost_multiplier);
         a.voter = voter;
         a.timestamp = eosio::current_time_point().sec_since_epoch();
         a.stake_id = stake_id;
         a.memo = memo;
    });
}

// Logic for proposing an edit for an article
// Users have to trigger this action through the everipediaiq::epartpropose action
[[eosio::action]]
void eparticlectr::propose2( name proposer, std::string slug, ipfshash_t ipfs_hash, std::string lang_code, int64_t group_id, std::string comment, std::string memo ) {
    require_auth( proposer );

    // Table definition
    propstbl proptable( _self, _self.value );

    // Argument checks
    eosio::check( ipfs_hash.size() <= MAX_IPFS_SIZE, "IPFS hash is too long. MAX_IPFS_SIZE=46");
    eosio::check( ipfs_hash.size() >= MIN_IPFS_SIZE, "IPFS hash is too short. MIN_IPFS_SIZE=46");
    eosio::check( comment.size() < MAX_COMMENT_SIZE, "comment must be less than 256 bytes");
    eosio::check( memo.size() < MAX_MEMO_SIZE, "memo must be less than 32 bytes");
    eosio::check( group_id >= -1, "group_id must be greater than -2. Specify -1 for auto-generated ID");

    // Get the existing wiki_id or create an new one
    int64_t wiki_id = eparticlectr::get_or_create_wiki_id(_self, slug, lang_code);

    // Calculate proposal parameters
    uint64_t proposal_id = proptable.available_primary_key();
    uint32_t starttime = eosio::current_time_point().sec_since_epoch();
    uint32_t endtime = eosio::current_time_point().sec_since_epoch() + DEFAULT_VOTING_TIME;

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
        permission_level { _self , name("active") },
        _self, name("vote"),
        std::make_tuple( proposer, proposal_id, true, EDIT_PROPOSE_IQ_EPARTICLECTR, std::string("editor initial vote"), memo )
    ).send();
}

[[eosio::action]]
void eparticlectr::finalize( uint64_t proposal_id ) {
    // Verify proposal exists
    propstbl proptable( _self, _self.value );
    auto prop_it = proptable.find( proposal_id );
    eosio::check( prop_it != proptable.end(), "Proposal not found" );

    // Verify voting period is complete
    eosio::check( eosio::current_time_point().sec_since_epoch() > prop_it->endtime, "Voting period is not over yet");

    // Retrieve votes from DB
    votestbl votetbl( _self, proposal_id );
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
                a.completion_time = eosio::current_time_point().sec_since_epoch();
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
                a.guild = vote_it->voter;
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
            });
            total_vote_points += vote_it->amount;
        }
        vote_it++;
    }

    // Update rewards table
    uint64_t current_period = eosio::current_time_point().sec_since_epoch() / REWARD_INTERVAL;
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
        eosio::check(wiki_it != wikitbl.end(), "PROTOCOL ERROR: An ID should already exist for this wiki");

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
    eosio::check(to == _self, "stop trying to hack the contract");
    eosio::check(symbol.is_valid(), "invalid symbol name");
    eosio::check(symbol == IQSYMBOL, "This contract only accepts IQ");
    eosio::check(quantity.is_valid(), "invalid quantity");
    eosio::check(quantity.amount > 0, "must deposit positive quantity");
    eosio::check(memo.size() < 128, "deposit memo has max length 128");

    // Determine deposit type
    // 1. Delegate IQ
    // 2. IQ reward 
    bool is_delegated = false;
    int first_colon = memo.find(":");
    std::string deposit_type = memo.substr(0, first_colon);
    eosio::check( deposit_type == "delegate", "Deposit must specify delegation in the format delegate:myeosaccount" );

    // IQ delegation
    std::string account_string = memo.substr(first_colon + 1);
    eosio::check(account_string.size() <= 12, "delegated account is invalid");

    name guild = name(account_string);
    eosio::check(is_account(guild), "delegate account does not exist");
    
    // initialize stats if it doesn't exist
    stats statstbl( _self, guild.value );
    if (statstbl.begin() == statstbl.end()) {
        statstbl.emplace( _self, [&]( auto& g ){
            g.available = asset(0, IQSYMBOL);
            g.staked = asset(0, IQSYMBOL);
            g.total_shares = 0;
            g.allow_delegation = true;
        });
    }
    auto stat_it = statstbl.begin();
    eosio::check(stat_it->allow_delegation, "This account does not allow delegation");

    // calculate share allocation
    eosio::check(quantity.amount % IQ_PRECISION_MULTIPLIER == 0, "must send a whole number of IQ");
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
    accounts acctstbl( _self, from.value );
    auto account_it = acctstbl.find( guild.value );
    if (account_it == acctstbl.end()) {
        acctstbl.emplace( _self, [&]( auto& a ){
            a.guild = guild;
            a.shares = shares;
            a.last_modified = eosio::current_time_point().sec_since_epoch();
        });
    }
    else {
        acctstbl.modify( account_it, same_payer, [&]( auto& a ){
            a.shares += shares;
            a.last_modified = eosio::current_time_point().sec_since_epoch();
        });
    }
}


[[eosio::action]]
void eparticlectr::withdraw( name account, name guild, uint64_t shares, name executor ) {
    eosio::check( executor == guild || executor == account, "Only the guild owner or account holder can execute this action");
    require_auth( executor );

    stats statstbl( _self, guild.value );
    eosio::check(statstbl.begin() != statstbl.end(), "No available balance to withdraw");
    auto stat_it = statstbl.begin();
    
    accounts acctstbl( _self, account.value );
    auto account_it = acctstbl.find( guild.value );
    eosio::check(account_it != acctstbl.end(), "user does not have shares in this guild");
    eosio::check(shares <= account_it->shares, "user is attempting to withdraw too many shares");
    if (executor == account)
        eosio::check(eosio::current_time_point().sec_since_epoch() > account_it->last_modified + MINIMUM_DELEGATION_TIME, "user cannot withdraw within 7 days of a deposit");

    // calculate share value
    uint64_t guild_balance = stat_it->available.amount + stat_it->staked.amount;
    uint64_t share_price = guild_balance / stat_it->total_shares;
    uint64_t iq_amount = share_price * shares;
    asset iq_withdraw = asset(iq_amount, IQSYMBOL);

    eosio::check(iq_withdraw <= stat_it->available, "available balance does not cover attempted withdrawal");
    
    // share and balance accounting
    statstbl.modify( stat_it, same_payer, [&]( auto& g ) {
        g.available -= iq_withdraw;
        g.total_shares -= shares;
    });
    // delete account entry if all shares are withdrawn
    if (account_it->shares == shares)
        acctstbl.erase( account_it );
    else {
        acctstbl.modify( account_it, same_payer, [&]( auto& a ){
            a.shares -= shares;         
        });
    }
    // send IQ
    action(
        permission_level{ _self , name("active") }, 
        name("everipediaiq") , name("transfer"),
        std::make_tuple( _self, account, iq_withdraw, std::string("withdrawing shares from guild"))
    ).send();

}


[[eosio::action]]
void eparticlectr::rewardclmid ( uint64_t reward_id ) {
    // prep tables
    perrwdstbl perrewards( _self, _self.value );
    rewardstbl rewardstable( _self, _self.value );

    // check if user rewards exist
    auto reward_it = rewardstable.find( reward_id );
    eosio::check( reward_it != rewardstable.end(), "reward doesn't exist in database");

    // Make sure period is complete before processing
    uint64_t reward_period = reward_it->proposal_finalize_period;
    uint64_t current_period = eosio::current_time_point().sec_since_epoch() / REWARD_INTERVAL;
    auto period_it = perrewards.find( reward_period );
    eosio::check(period_it != perrewards.end(), "PROTOCOL ERROR: This period should exist");
    eosio::check(current_period > reward_period, "Reward period must complete before claiming rewards");

    // Issue curation reward
    int64_t curation_reward = reward_it->vote_points * PERIOD_CURATION_REWARD / period_it->curation_sum;
    eosio::check(curation_reward <= PERIOD_CURATION_REWARD, "System logic error. Too much IQ calculated for curation reward.");
    if (curation_reward == 0) // Minimum reward of 0.001 IQ to prevent unclaimable rewards
        curation_reward = 1;
    asset curation_quantity = asset(curation_reward, IQSYMBOL);
    std::string memo = std::string("Curation IQ reward:" + reward_it->guild.to_string() + ":" + reward_it->memo);
    action(
        permission_level { TOKEN_CONTRACT, name("active") },
        TOKEN_CONTRACT, name("issue"),
        std::make_tuple( _self, curation_quantity, memo )
    ).send();

    // Calculate editor reward if needed
    int64_t editor_reward = 0;
    if (reward_it->is_editor && reward_it->proposalresult) {
        editor_reward = reward_it->edit_points * PERIOD_EDITOR_REWARD / period_it->editor_sum;
        if (editor_reward == 0) // Minimum reward of 0.001 IQ to prevent unclaimable rewards
            editor_reward = 1;
        eosio::check(editor_reward <= PERIOD_EDITOR_REWARD, "System logic error. Too much IQ calculated for editor reward.");
        asset editor_quantity = asset(editor_reward, IQSYMBOL);
        std::string memo = std::string("Editor IQ reward:" + reward_it->guild.to_string() + ":" + reward_it->memo);
        
        // Issue editor reward
        action(
            permission_level { TOKEN_CONTRACT, name("active") },
            TOKEN_CONTRACT, name("issue"),
            std::make_tuple( _self, editor_quantity, memo )
        ).send();
        
    }
    
    // Get stats table for guild
    stats statstbl( _self, reward_it->guild.value );
    eosio::check(statstbl.begin() != statstbl.end(), "PROTOCOL ERROR: This user should have a balance");
    auto stat_it = statstbl.begin();

    // Get accounts table for guild owner
    accounts acctstbl( _self, reward_it->guild.value );
    auto account_it = acctstbl.find( reward_it->guild.value );
    if (account_it == acctstbl.end()) {
        acctstbl.emplace( _self, [&]( auto& a ){
            a.guild = reward_it->guild;
            a.shares = 0;
            a.last_modified = eosio::current_time_point().sec_since_epoch();
        });
        account_it = acctstbl.find( reward_it->guild.value );
    }

    // Update available balance of guild
    // Reward guild owner shares for half the reward
    // Update guild's total_shares to account for new shares
    int64_t total_reward = editor_reward + curation_reward;
    asset total_quantity = asset(total_reward, IQSYMBOL);
    asset half_quantity = total_quantity / 2;
    uint64_t guild_balance = stat_it->available.amount + stat_it->staked.amount;
    uint64_t share_price = guild_balance / stat_it->total_shares;
    uint64_t new_shares = half_quantity.amount / share_price;
    statstbl.modify( stat_it, same_payer, [&]( auto& g ) {
        g.available += total_quantity;
        g.total_shares += new_shares;
    });
    acctstbl.modify( account_it, same_payer, [&]( auto& a ) {
        a.shares += new_shares;
        // don't update last_modified for rewards
    });

    // delete reward after claiming
    rewardstable.erase( reward_it );
}

[[eosio::action]]
void eparticlectr::oldvotepurge( uint64_t proposal_id, uint32_t loop_limit ) {
    // Get the proposal object
    propstbl proptable( _self, _self.value );
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
    votestbl votetbl( _self, proposal_id );
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
void eparticlectr::allowdelegat( name user, bool allow ) {
    require_auth( user );

    stats statstbl( _self, user.value );
    if (statstbl.begin() == statstbl.end()) {
        statstbl.emplace( _self, [&]( auto& g ){
            g.available = asset(0, IQSYMBOL);
            g.staked = asset(0, IQSYMBOL);
            g.total_shares = 0;
            g.allow_delegation = allow;
        });
    }
    else {
        statstbl.modify( statstbl.begin(), same_payer, [&]( auto& g ) {
            g.allow_delegation = allow;
        });
    }
}

[[eosio::action]]
void eparticlectr::mkreferendum( uint64_t proposal_id ) {
    propstbl proptable( _self, _self.value );

    // Validate proposal
    auto prop_it = proptable.find(proposal_id);
    eosio::check( prop_it != proptable.end(), "Proposal does not exist");
    eosio::check( !prop_it->finalized, "Proposal is finalized");
    eosio::check( prop_it->endtime - prop_it->starttime < REFERENDUM_DURATION_SECS, "Proposal has already been marked as a referendum");

    require_auth(prop_it->proposer);

    proptable.modify( prop_it, same_payer, [&]( auto& p ) {
        p.endtime = eosio::current_time_point().sec_since_epoch() + REFERENDUM_DURATION_SECS;
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
            EOSIO_DISPATCH_HELPER( eparticlectr, (allowdelegat)(boostinvest)(boosttxfr)(brainclmid)(slashnotify)(finalize)(oldvotepurge)(propose2)(rewardclmid)(vote)(logpropres)(logpropinfo)(mkreferendum)(withdraw) )
        }
    }
}
