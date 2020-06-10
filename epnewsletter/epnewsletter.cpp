
#include "epnewsletter.hpp"


[[eosio::action]]
void epnewsletter::signup(asset quantity)
{
    
}

[[eosio::action]]
void epnewsletter::cleanout()
{
    // Multi-sig required here
    require_auth(CUSTODIAN_ACCOUNT);
    require_auth(EP_ACCOUNT);

    // Get the status 
    auto sym = IQSYMBOL;
    statustbl statustable( _self, sym.code().raw() );
    auto status_it = statustable.find( sym.code().raw() );
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

EOSIO_DISPATCH( epnewsletter, (signup) )
