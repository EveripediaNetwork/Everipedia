/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */

#include "everipediaiq.hpp"

void everipediaiq::create( account_name issuer,
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


void everipediaiq::issue( account_name to, asset quantity, string memo )
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

void everipediaiq::transfer( account_name from,
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


    if ( (from == TOKEN_CONTRACT_ACCTNAME) || (from == ARTICLE_CONTRACT_ACCTNAME) || 
         (from == GOVERNANCE_CONTRACT_ACCTNAME) || (from == FEE_CONTRACT_ACCTNAME) ||
         (to == TOKEN_CONTRACT_ACCTNAME) || (to == ARTICLE_CONTRACT_ACCTNAME) || 
         (to == GOVERNANCE_CONTRACT_ACCTNAME) || (to == FEE_CONTRACT_ACCTNAME) ){
        // no transfer fee
        sub_balance( from, quantity );
        add_balance( to, quantity, from );
    }
    else{
        // transfer fee
        asset feeNugget = quantity;
        int64_t theFee = (int64_t)(quantity.amount * TRANSFER_FEE);

      	// prevent decimal truncation from creating a zero-fee transfer
      	if (theFee == 0)
      	    theFee = 1;

        feeNugget.amount = theFee;

        sub_balance( from, quantity );
        add_balance( to, quantity, from );

        SEND_INLINE_ACTION( *this, paytxfee, {from, N(active)}, {from, feeNugget, "0.1% transfer fee"} );
    }
}

void everipediaiq::paytxfee( account_name from, asset fee, string memo )
{
    require_auth( from );
    eosio_assert( from != FEE_CONTRACT_ACCTNAME, "cannot pay fee to self" );

    accounts from_acnts( _self, from );
    const auto& from_act = from_acnts.get( fee.symbol.name(), "insufficient funds for fee" );
    eosio_assert( from_act.balance.amount >= fee.amount, "insufficient funds for fee" );
    
    auto sym = fee.symbol.name();
    stats statstable( _self, sym );
    const auto& st = statstable.get( sym );

    eosio_assert( fee.is_valid(), "invalid fee" );
    eosio_assert( fee.amount > 0, "must transfer positive fee" );
    eosio_assert( fee.symbol == st.supply.symbol, "symbol precision mismatch" );
    eosio_assert( memo.size() <= 256, "memo has more than 256 bytes" );

    require_recipient( from );

    add_balance( FEE_CONTRACT_ACCTNAME, fee, _self );
    sub_balance( from, fee );
}

void everipediaiq::burn( account_name from, asset quantity, string memo )
{
     require_auth( from );
     auto sym = quantity.symbol;
     eosio_assert( sym.is_valid(), "invalid symbol name" );
     eosio_assert( memo.size() <= 256, "memo has more than 256 bytes" );
    
     auto sym_name = sym.name();
     stats statstable( _self, sym_name );
     auto existing = statstable.find( sym_name );
     eosio_assert( existing != statstable.end(), "token with symbol does not exist" );
     const auto& st = *existing;
    
     eosio_assert( quantity.is_valid(), "invalid quantity" );
     eosio_assert( quantity.amount > 0, "must burn positive quantity" );
     eosio_assert( quantity.symbol == st.supply.symbol, "symbol precision mismatch" );
    
     statstable.modify( st, 0, [&]( auto& s ) {
        s.supply -= quantity;
     });
    
     sub_balance( from, quantity );
}

void everipediaiq::sub_balance( account_name owner, asset value ) {
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

void everipediaiq::add_balance( account_name owner, asset value, account_name ram_payer )
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

void everipediaiq::brainmeiq( account_name staker, int64_t amount) {
    require_auth(staker);

    eosio_assert(amount > 0, "must transfer a positive amount");

    // Transfer the IQ to the eparticlectr contract for staking
    asset iqAssetPack = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    everipediaiq::transfer(staker, N(eparticlectr), iqAssetPack, "stake for brainpower");

    // Finish the brainpower issuance by calling the eparticlectr contract
    eosio::action theAction = action(permission_level{ N(eparticlectr), N(active) }, N(eparticlectr), N(brainmeart),
                                  std::make_tuple(staker, amount));
    theAction.send();
}


EOSIO_ABI( everipediaiq, (burn)(create)(issue)(paytxfee)(transfer)(brainmeiq) )
