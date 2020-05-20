
#include "iqlockupctcr.hpp"


[[eosio::action]]
void iqlockupctcr::deposit(asset quantity)
{
    require_auth(EP_ACCOUNT);

    auto sym = quantity.symbol;
    eosio::check( sym.is_valid(), "invalid symbol name" );
    eosio::check( quantity.is_valid(), "invalid quantity" );
    eosio::check( quantity.amount == , "must deposit exactly " + LOCKUP_TOTAL + " IQ TOKENS");

    auto sym = quantity.symbol.code();
    statustbl statustable( _self, sym.raw() );
    const auto& st = statstable.get( sym.raw() );

    statstable.emplace( _self, [&]( auto& s ) {
       s.supply.symbol = maximum_supply.symbol;
       s.max_supply    = maximum_supply;
       s.issuer        = issuer;
    });
}

[[eosio::action]]
void iqlockupctcr::cleanout()
{
    require_auth(CUSTODIAN_ACCOUNT);
    require_auth(EP_ACCOUNT);

    auto sym = maximum_supply.symbol;
    eosio::check( sym.is_valid(), "invalid symbol name" );
    eosio::check( maximum_supply.is_valid(), "invalid supply");
    eosio::check( maximum_supply.amount > 0, "max-supply must be positive");

    stats statstable( _self, sym.code().raw() );
    auto existing = statstable.find( sym.code().raw() );
    eosio::check( existing == statstable.end(), "token with symbol already exists" );

    statstable.emplace( _self, [&]( auto& s ) {
       s.supply.symbol = maximum_supply.symbol;
       s.max_supply    = maximum_supply;
       s.issuer        = issuer;
    });
}

[[eosio::action]]
void iqlockupctcr::gettranche( name to, asset quantity, string memo )
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



EOSIO_DISPATCH( iqlockupctcr, (cleanout)(gettranche) )
