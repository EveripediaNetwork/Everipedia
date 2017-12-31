/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */

#include <epiq/epiq.hpp> /// defines transfer struct (abi)

namespace epiq {
   using namespace eosio;

   ///  When storing accounts, check for empty balance and remove account
   void store_account( account_name account_to_store, const account& a ) {
      if( a.is_empty() ) {
         ///               value, scope
         accounts::remove( a, account_to_store );
      } else {
         ///              value, scope
         accounts::store( a, account_to_store );
      }
   }

   void apply_currency_transfer( const epiq::transfer& transfer_msg, bool pays_tx_fee ) {
      require_notice( transfer_msg.to, transfer_msg.from );
      require_auth( transfer_msg.from );

      auto from = get_account( transfer_msg.from );
      auto to   = get_account( transfer_msg.to );
      auto burn = get_account( BURN_ACCOUNT );

      // Transaction fee calculation
      uint64_t tx_fee = 0;
      if (pays_tx_fee) {
         //tx_fee = transfer_msg.quantity.quantity * TX_FEE_PERCENT;
         tx_fee = transfer_msg.quantity.quantity / TX_FEE_PARTS;
         if (tx_fee > MAX_TX_FEE)
            tx_fee = MAX_TX_FEE;
      }
      iq_tokens tx_fee_tokens = iq_tokens(tx_fee);
        
      // underflow/overflow assertion is handled by 
      from.balance -= transfer_msg.quantity; 
      to.balance   += (transfer_msg.quantity - tx_fee_tokens);
      burn.balance += tx_fee_tokens;


      store_account( transfer_msg.from, from );
      store_account( transfer_msg.to, to );
      store_account( BURN_ACCOUNT, burn );
   }

}  

using namespace epiq;

extern "C" {
    void init()  {
       account owned_account;
       //Initialize iq account only if it does not exist
       if ( !accounts::get( owned_account, N(epiq) )) {
          store_account( N(epiq), account( iq_tokens(1000ll*1000ll*1000ll) ) );
       }
    }

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t code, uint64_t action ) {
       if( code == N(epiq) ) {
          if( action == N(transfer) ) 
             epiq::apply_currency_transfer( current_message< epiq::transfer >(), true );
       }
       if ( code == N(article) && action == N(edit) ) {
             epiq::apply_currency_transfer( current_message< epiq::transfer >(), false );
       }
    }
}
