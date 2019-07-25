[[eosio::action]]
void iqdelegation::vote( name guild, uint64_t proposal_id, bool approve, uint64_t amount, string comment, string memo ) {
    eosio_assert(amount > 0, "must transfer a positive amount");
    eosio_assert(amount < 1e8, "must transfer a reasonable amount");
    eosio_assert(memo.size() < 100, "max 100 bytes in memo");

    // Subtract the value from the 
    // Transfer the IQ to the eparticlectr contract for staking
    asset iqAssetPack = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    action(
        permission_level{ voter , permission }, 
        _self , name("transfer"),
        std::make_tuple( voter, ARTICLE_CONTRACT, iqAssetPack, std::string("stake for vote"))
    ).send();

    // Create the vote in the eparticlectr contract
    std::string vote_memo = guild.to_string() + string(":") + memo;
    action(
        permission_level{ ARTICLE_CONTRACT, name("active") }, 
        ARTICLE_CONTRACT, name("vote"),
        std::make_tuple( voter, proposal_id, approve, amount, comment, vote_memo )
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
