#include <hello/hello.hpp>

extern "C" {

    void init()  {
       eosio::print( "Init World!\n" );
    }

    void apply( uint64_t code, uint64_t action ) {
		eosio::print( "Hello World: ", eosio::name(code), "->", 
          eosio::name(action), "\n" );
		if( action == N(transfer) ) {
            auto message = eosio::current_message<transfer>();
            //eosio::require_auth( message.from );
            eosio::print( "Transfer from ", message.from, "\n" );
		}
    }

} 
