#include "epiqtokenfee.hpp"
#include <everipediaiq/everipediaiq.hpp>
#include <eosio.token/eosio.token.hpp>
#include <cmath>

void epiqtokenfee::buyiq( const transfer& t ) {
    if (t.to == N(epiqtokenfee)) {

        // get total IQ fee balance
        auto sym_name = eosio::symbol_type(S(3,IQ)).name();
        asset balance = everipediaiq( N(everipediaiq) ).get_balance( N(epiqtokenfee), sym_name );

        asset iq = asset(0, S(3,IQ));
        double X = double(balance.amount);
        double C = 3.5e7;
        double E = double(t.quantity.amount);
        iq.amount = int64_t( (exp(E/C)*X - X) / exp(E/C) );
        
        // send IQ to user
        action(
            permission_level{ _self, N(active) }, 
            N(everipediaiq), N(transfer),
            std::make_tuple( N(epiqtokenfee) , t.from, iq, std::string("Buy IQ from Fee DEX"))
        ).send();

        // buy RAM with EOS
        action(
            permission_level{ _self, N(active) }, 
            N(eosio), N(buyram),
            std::make_tuple( N(epiqtokenfee) , N(eparticlectr), t.quantity)
        ).send();
    }
    else {
        // ignore all messages where fee contract is the sender
    }
}

extern "C" {
    [[noreturn]] void apply( uint64_t receiver, uint64_t code, uint64_t action ) {
        epiqtokenfee c( N(epiqtokenfee) );
        if ( code == N(eosio.token) && action == N(transfer) ) {
            c.buyiq( unpack_action_data<epiqtokenfee::transfer>() );
        }
        eosio_exit(0);
    }
}
