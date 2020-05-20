
#include "iqlockupctcr.hpp"


[[eosio::action]]
void iqlockupctcr::deposit(asset quantity)
{
    require_auth(EP_ACCOUNT);

    // Check the input 
    auto sym = quantity.symbol;
    eosio::check( sym.is_valid(), "Invalid symbol name" );
    eosio::check( sym.raw() == IQSYMBOL.raw(), "Symbol in asset is not IQ" );
    eosio::check( quantity.is_valid(), "Invalid quantity" );
    eosio::check( quantity.amount > 0, "Deposit must be positive");

    // Fetch the deposit entry
    auto raw_iq_str = IQSYMBOL.raw();
    statustbl statustable( _self, raw_iq_str );
    auto status_it = statustable.find( raw_iq_str );

    // Initialize the table if it isn't already
    if (status_it == statustable.end()){
        // Initialize the deposit status table
        statustable.emplace( EP_ACCOUNT, [&]( auto& s ) {
            s.balance = quantity;
            s.total_deposited = quantity;
            s.num_tranches_collected = 0;
        });
    }
    // Add to an existing deposit
    else {
        eosio::check( status_it->total_deposited.amount + quantity.amount <= LOCKUP_TOTAL.amount, "You cannot deposit more that what is required" );
        statustable.modify( status_it, same_payer, [&]( auto& s ) {
            s.balance += quantity;
            s.total_deposited += quantity;
        });
    }

    // Pull in the IQ from the user 
    action(
        permission_level{ EP_ACCOUNT, name("active") }, 
        name("everipediaiq"), name("transfer"),
        std::make_tuple( EP_ACCOUNT, LOCKUP_CONTRACT, quantity, std::string("Deposit"))
    ).send();

}

[[eosio::action]]
void iqlockupctcr::cleanout()
{
    // Multi-sig required here
    require_auth(CUSTODIAN_ACCOUNT);
    require_auth(EP_ACCOUNT);

    // Get the status 
    auto sym = IQSYMBOL.code();
    statustbl statustable( _self, sym.raw() );
    auto status_it = statustable.find( sym.raw() );
    eosio::check( status_it != statustable.end(), "No deposit found" );
    const auto& st = *status_it;

    eosio::check( st.balance.amount > 0, "Balance is zero" );

    // Withdraw all of the IQ tokens
    action(
        permission_level{ EP_ACCOUNT, name("active") }, 
        name("everipediaiq"), name("transfer"),
        std::make_tuple( _self, EP_ACCOUNT, st.balance, std::string("Cleanout withdrawal"))
    ).send();

}

[[eosio::action]]
void iqlockupctcr::gettranches()
{
    require_auth(EP_ACCOUNT);

    // Get the status 
    auto sym = IQSYMBOL.code();
    statustbl statustable( _self, sym.raw() );
    auto status_it = statustable.find( sym.raw() );
    eosio::check( status_it != statustable.end(), "No deposit found" );
    const auto& st = *status_it;

    // Make sure that the deposit has been fully funded 
    eosio::check( st.total_deposited >= LOCKUP_TOTAL, "You haven't fully deposited all the IQ yet" );

    // Make sure that you didn't already get all of the tranches 
    eosio::check( st.num_tranches_collected < TOTAL_TRANCHES, "You have already collected all of the tranches" );

    // Get some time points, to be used later 
    uint32_t current_time = eosio::current_time_point().sec_since_epoch();
    uint32_t elapsed_time = current_time - START_DATE;

    // Check for the cliff first
    uint32_t time_since_cliff = elapsed_time - CLIFF_DELAY;
    eosio::check( time_since_cliff >= 0, "You have not reached the cliff yet" );

    // Calculate the number of possible tranches
    uint32_t possible_tranches = 1 + (time_since_cliff / TRANCHE_PERIOD) - st.num_tranches_collected; // This will be trunc'd down to the nearest int
    eosio::check( possible_tranches > 0, "No new tranches available yet" );

    // Create the tranche asset
    asset tranche_amount = asset(possible_tranches * (LOCKUP_TOTAL.amount / TOTAL_TRANCHES), IQSYMBOL);

    // Update the status table
    statustable.modify( status_it, same_payer, [&]( auto& s ) {
       s.balance -= tranche_amount;
       s.num_tranches_collected += possible_tranches;
    });

    // Release the tranch(es) to the EP_ACCOUNT
    action(
        permission_level{ _self, name("active") }, 
        name("everipediaiq"), name("transfer"),
        std::make_tuple( _self, EP_ACCOUNT, tranche_amount, std::string("Tranche disbursement"))
    ).send();
}



EOSIO_DISPATCH( iqlockupctcr, (deposit)(cleanout)(gettranches) )
