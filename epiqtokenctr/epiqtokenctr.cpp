/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */

#include "epiqtokenctr.hpp"
#include <math.h>

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

    // everything but staking must pay a transfer fee
    if (to != EPARTICLE_ACCOUNT && to != IQ_TRANSFER_FEE_ACCOUNT) {
        asset fee = asset(ceil((double)quantity.amount * IQ_TRANSFER_FEE_PERCENT), IQSYMBOL);
        if (fee.amount > MAX_IQ_FEE)
	    fee.amount = MAX_IQ_FEE;

        SEND_INLINE_ACTION( *this, transfer, {from,N(active)}, {from, IQ_TRANSFER_FEE_ACCOUNT, fee, "transfer fee"} );

        quantity -= fee;
    }


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

void epiqtokenctr::brainmeiq( account_name staker, int64_t amount) {
    require_auth(staker);
    
    eosio_assert(amount > 0, "must transfer a positive amount");

    // Transfer the IQ to the article contract for staking
    asset iqAssetPack = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    SEND_INLINE_ACTION( *this, transfer, {staker,N(active)}, {staker, EPARTICLE_ACCOUNT, iqAssetPack, "stake for brainpower"} );
    
    // Finish the brainpower issuance by calling the article contract
    action(
        permission_level{ EPARTICLE_ACCOUNT, N(active) }, 
        EPARTICLE_ACCOUNT, N(brainmeart),
        std::make_tuple(staker, amount)
    ).send();
}


EOSIO_ABI( epiqtokenctr, (create)(issue)(transfer)(brainmeiq) )
