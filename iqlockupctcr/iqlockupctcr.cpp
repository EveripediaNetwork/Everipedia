
#include "iqlockupctcr.hpp"


[[eosio::action]]
void iqlockupctcr::deposit(asset quantity)
{
    require_auth(EP_ACCOUNT);

    // Check the input 
    auto sym = quantity.symbol;
    eosio::check( sym.is_valid(), "invalid symbol name" );
    eosio::check( quantity.is_valid(), "invalid quantity" );
    eosio::check( quantity.amount == , "must deposit exactly " + LOCKUP_TOTAL + " IQ TOKENS");

    // Make sure a deposit doesn't already exist 
    auto sym = quantity.symbol.code();
    statustbl statustable( _self, sym.raw() );
    auto status_it = statustable.find( sym.raw() );
    eosio::check( status_it == statustable.end(), "There has already been an initial deposit" );

    // Initialize the deposit status table
    statustable.emplace( _self, [&]( auto& s ) {
       s.balance = quantity;
       s.deposit_time = eosio::current_time_point().sec_since_epoch();
       s.num_tranches_collected = 0;
       s.last_tranche_collection_time = 0;
       s.final_tranche_available_time = eosio::current_time_point().sec_since_epoch() + (TRANCHE_PERIOD * TOTAL_TRANCHES);
    });

    // Pull in the IQ from the user 
    action(
        permission_level{ EP_ACCOUNT, name("active") }, 
        name("everipediaiq"), name("transfer"),
        std::make_tuple( EP_ACCOUNT, LOCKUP_CONTRACT, quantity, std::string("Initial deposit"))
    ).send();

}

[[eosio::action]]
void iqlockupctcr::cleanout()
{
    // Multi-sig required here
    require_auth(CUSTODIAN_ACCOUNT);
    require_auth(EP_ACCOUNT);

    auto sym = IQSYMBOL.code();
    statustbl statustable( _self, sym.raw() );
    auto status_it = statustable.find( sym.raw() );
    eosio::check( status_it != statustable.end(), "No deposit found" );
    const auto& st = *existing;

    eosio::check( st.balance > 0, "balance is zero" );

    action(
        permission_level{ _self, name("active") }, 
        name("everipediaiq"), name("transfer"),
        std::make_tuple( _self, EP_ACCOUNT, st.balance, std::string("Cleanout withdrawal"))
    ).send();

}

[[eosio::action]]
void iqlockupctcr::gettranches( name to, asset quantity, string memo )
{
    auto sym = quantity.symbol;
    eosio::check( sym.is_valid(), "invalid symbol name" );
    eosio::check( memo.size() <= 256, "memo has more than 256 bytes" );

    auto sym_name = sym.code().raw();
    stats statstable( _self, sym_name );
    auto existing = statstable.find( sym_name );
    eosio::check( existing != statstable.end(), "token with symbol does not exist, create token before issue" );
    const auto& st = *existing;

    require_auth( st.issuer );
    eosio::check( quantity.is_valid(), "invalid quantity" );
    eosio::check( quantity.amount > 0, "must issue positive quantity" );

    eosio::check( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );
    eosio::check( quantity.amount <= st.max_supply.amount - st.supply.amount, "quantity exceeds available supply");

    statstable.modify( st, same_payer, [&]( auto& s ) {
       s.supply += quantity;
    });

    add_balance( st.issuer, quantity, st.issuer );

    if( to != st.issuer ) {
       SEND_INLINE_ACTION( *this, transfer, {st.issuer, name("active")}, {st.issuer, to, quantity, memo} );
    }
}



EOSIO_DISPATCH( iqlockupctcr, (deposit)(cleanout)(gettranches) )
