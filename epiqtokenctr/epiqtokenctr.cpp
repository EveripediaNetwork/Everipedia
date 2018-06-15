/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */

#include "epiqtokenctr.hpp"

uint64_t epiqtokenctr::getiqbalance( account_name from ) {
    // Create the account object
    epiqtokenctr::accounts accountstable( N(epiqtokenctr), from );
    auto iqAccount_iter = accountstable.find(IQSYMBOL.name());

    // Check for an account
    if(iqAccount_iter != accountstable.end()){
        return iqAccount_iter->balance.amount;
    }
    else{
        return 0;
    }
}

void epiqtokenctr::create( account_name issuer,
                    asset        maximum_supply )
{
    require_auth( _self );

    auto sym = maximum_supply.symbol;
    eosio_assert( sym.is_valid(), "invalid symbol name" );
    eosio_assert( maximum_supply.is_valid(), "invalid supply");
    eosio_assert( maximum_supply.amount > 0, "max-supply must be positive");

    stats statstable( _self, sym.name() );
    auto existing = statstable.find( sym.name() );
    eosio_assert( existing == statstable.end(), "token with symbol already exists" );

    statstable.emplace( _self, [&]( auto& s ) {
       s.supply.symbol = maximum_supply.symbol;
       s.max_supply    = maximum_supply;
       s.issuer        = issuer;
    });
}


void epiqtokenctr::issue( account_name to, asset quantity, string memo )
{
    auto sym = quantity.symbol;
    eosio_assert( sym.is_valid(), "invalid symbol name" );
    eosio_assert( memo.size() <= 256, "memo has more than 256 bytes" );

    auto sym_name = sym.name();
    stats statstable( _self, sym_name );
    auto existing = statstable.find( sym_name );
    eosio_assert( existing != statstable.end(), "token with symbol does not exist, create token before issue" );
    const auto& st = *existing;

    require_auth( st.issuer );
    eosio_assert( quantity.is_valid(), "invalid quantity" );
    eosio_assert( quantity.amount > 0, "must issue positive quantity" );

    eosio_assert( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );
    eosio_assert( quantity.amount <= st.max_supply.amount - st.supply.amount, "quantity exceeds available supply");

    statstable.modify( st, 0, [&]( auto& s ) {
       s.supply += quantity;
    });

    add_balance( st.issuer, quantity, st.issuer );

    if( to != st.issuer ) {
       SEND_INLINE_ACTION( *this, transfer, {st.issuer,N(active)}, {st.issuer, to, quantity, memo} );
    }
}

void epiqtokenctr::transferint( account_name from, account_name to, uint64_t quantity, string memo )
{
    asset iqAssetPack = asset(quantity, eosio::symbol_type(eosio::string_to_symbol(4, "IQ")));
    return epiqtokenctr::transfer(from, to, iqAssetPack, memo);
}

void epiqtokenctr::transfer( account_name from,
                      account_name to,
                      asset        quantity,
                      string       memo )
{
    eosio_assert( from != to, "cannot transfer to self" );
    require_auth( from );
    eosio_assert( is_account( to ), "to account does not exist");
    auto sym = quantity.symbol.name();
    stats statstable( _self, sym );
    const auto& st = statstable.get( sym );

    require_recipient( from );
    require_recipient( to );

    eosio_assert( quantity.is_valid(), "invalid quantity" );
    eosio_assert( quantity.amount > 0, "must transfer positive quantity" );
    eosio_assert( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );
    eosio_assert( memo.size() <= 256, "memo has more than 256 bytes" );


    sub_balance( from, quantity );
    add_balance( to, quantity, from );
}

void epiqtokenctr::sub_balance( account_name owner, asset value ) {
   accounts from_acnts( _self, owner );

   const auto& from = from_acnts.get( value.symbol.name(), "no balance object found" );
   eosio_assert( from.balance.amount >= value.amount, "overdrawn balance" );


   if( from.balance.amount == value.amount ) {
      from_acnts.erase( from );
   } else {
      from_acnts.modify( from, owner, [&]( auto& a ) {
          a.balance -= value;
      });
   }
}

void epiqtokenctr::add_balance( account_name owner, asset value, account_name ram_payer )
{
   accounts to_acnts( _self, owner );
   auto to = to_acnts.find( value.symbol.name() );
   if( to == to_acnts.end() ) {
      to_acnts.emplace( ram_payer, [&]( auto& a ){
        a.balance = value;
      });
   } else {
      to_acnts.modify( to, 0, [&]( auto& a ) {
        a.balance += value;
      });
   }
}

void epiqtokenctr::brainmeiq( account_name staker, uint64_t amount) {
    require_auth(staker);
    require_recipient(_self);

    // Check that there is enough IQ available to stake to brainpower
    uint64_t oldIQBalance = epiqtokenctr::getiqbalance(staker);
    eosio_assert(oldIQBalance > 0, "Not enough IQ available to convert to brainpower");

    print("Current balance is: ", oldIQBalance, "\n");

    // Transfer the IQ to the eparticlectr contract for staking
    asset iqAssetPack = asset(amount, IQSYMBOL);
    epiqtokenctr::transfer(staker, N(eparticlectr), iqAssetPack, "memo");

    // Finish the brainpower issuance by calling the eparticlectr contract
    eosio::action theAction = action(permission_level{ N(eparticlectr), N(active) }, N(eparticlectr), N(brainmeart),
                                    std::make_tuple(staker, amount));
    theAction.send();
}


EOSIO_ABI( epiqtokenctr, (create)(issue)(transfer)(transferint)(brainmeiq) )
