void iqdelegation::deposit( name from, name to, asset quantity, string memo ) {
    if (from == _self) return; // sending tokens, ignore

    auto symbol = quantity.symbol;
    eosio_assert(memo.size() <= 12, "memo must be an EOS account name");
    eosio_assert(to == _self, "stop trying to hack the contract");
    eosio_assert(symbol.is_valid(), "invalid symbol name");
    eosio_assert(symbol == IQ_SYMBOL, "This contract only accepts IQ");
    eosio_assert(quantity.is_valid(), "invalid quantity");
    eosio_assert(quantity.amount > 0, "must deposit positive quantity");

    // IQ rewards from contract
    if (from == name("everipediaiq").value) {
        name guild = name(memo);

    }
    // Deposit from a user
    else {
        name guild = name(memo);

        stats statstbl( _self, guild.value );
        eosio_assert(statstbl.begin() != statstbl.end(), "guild is not registered");
        auto stat_it = statstbl.begin();

        // calculate share allocation
        eosio_assert(quantity.amount % IQ_PRECISION_MULTIPLIER == 0, "must send a whole number of IQ");
        uint64_t shares;
        if (total_shares == 0) {
            shares = quantity.amount / IQ_PRECISION_MULTIPLIER; // shares = (whole IQ sent)
        }
        else {
            uint64_t guild_balance = stat_it->available.amount + stat_it->staked.amount;
            uint64_t share_price = guild_balance / total_shares;
            shares = quantity.amount / share_price;
        }

        // update guild balance
        statstbl.modify( stat_it, same_payer, [&]( auto& g ){
            g.available += quantity;
            g.total_shares += shares;
        });

        // update user shares
        accounts acctstbl( _self, guild.value );
        auto account_it = acctstbl.find( from );
        if (account_it = acctstbl.end()) {
            acctstbl.emplace( from, [&]( auto& a ){
                a.delegator = from;
                a.shares = shares;
            });
        }
        else {
            acctstbl.modify( account_it, from, [&]( auto& a ){
                a.shares += shares;
            });
        }
    }

    name guild = name(memo);
}

[[eosio::action]]
void regguild( name guild ) {
    stats statstbl( _self, guild.value );
    eosio_assert(statstbl.begin() == statstbl.end(), "guild already exists");

    statstbl.emplace( guild, [&]( auto& g ){
        g.available = asset(0, IQ_SYMBOL);
        g.staked = asset(0, IQ_SYMBOL);
        g.total_shares = 0;
    });
}

[[eosio::action]]
void iqdelegation::withdraw( name withdrawer, name guild, uint64_t shares ) {
    stats statstbl( _self, guild.value );
    eosio_assert(statstbl.begin() != statstbl.end(), "guild is not registered");
    
    accounts acctstbl( _self, guild.value );
    auto account_it = acctstbl.find( from );
    eosio_assert(account_it != acctstbl.end(), "user does not have shares in this guild");
    eosio_assert(shares <= account_it->shares, "user is attempting to withdraw too many shares");

    // calculate share value
    uint64_t guild_balance = stat_it->available.amount + stat_it->staked.amount;
    uint64_t share_price = guild_balance / total_shares;
    uint64_t iq_amount = share_price * account_it->shares;
    asset iq_withdraw = asset(iq_amount, IQ_SYMBOL);

    eosio_assert(stat->available_balance < iq_withdraw, "available balance does not cover attempted withdrawal");
    
    // send IQ
    asset iqAssetPack = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    action(
        permission_level{ _self , name("active") }, 
        _self , name("transfer"),
        std::make_tuple( _self, account->delegator, iq_withdraw, std::string("withdrawing shares from guild"));
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
void iqdelegation::vote( name guild, uint64_t proposal_id, bool approve, uint64_t amount, string comment, string memo ) {
    eosio_assert(amount > 0, "must transfer a positive amount");
    eosio_assert(amount < 1e8, "must transfer a reasonable amount");

    // Subtract the value from the 
    // Transfer the IQ to the eparticlectr contract for staking
    asset iqAssetPack = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    action(
        permission_level{ voter , permission }, 
        _self , name("transfer"),
        std::make_tuple( voter, ARTICLE_CONTRACT, iqAssetPack, std::string("stake for vote"))
    ).send();

    // Create the vote in the eparticlectr contract
    action(
        permission_level{ ARTICLE_CONTRACT, name("active") }, 
        ARTICLE_CONTRACT, name("vote"),
        std::make_tuple( voter, proposal_id, approve, amount, comment, memo )
    ).send();
}

extern "C" void apply(uint64_t receiver, uint64_t code, uint64_t action)
{
    auto _self = receiver;
    if (code == name("everipediaiq").value && action == name("transfer").value)
    {
        eosio::execute_action(
            eosio::name(receiver), eosio::name(code), &iqdelegation::deposit
        );
    }
    else if (code == _self && action == name("vote").value)
    {
        eosio::execute_action(
            eosio::name(receiver), eosio::name(code), &iqdelegation::vote
        );
    }
    else if (code == _self && action == name("withdraw").value)
    {
        eosio::execute_action(
            eosio::name(receiver), eosio::name(code), &iqdelegation::withdraw
        );
    }
}
