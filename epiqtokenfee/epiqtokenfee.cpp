#include "epiqtokenfee.hpp"
#include <everipediaiq/everipediaiq.hpp>
#include <eosio.token/eosio.token.hpp>

void epiqtokenfee::buyiq( const transfer& t ) {
    if (t.to == N(epiqtokenfee)) {

        // get total IQ fee balance
        auto sym_name = eosio::symbol_type(S(3,IQ)).name();
        asset balance = everipediaiq( N(everipediaiq) ).get_balance( N(epiqtokenfee), sym_name );

        asset iq = asset(0, S(3,IQ));
        uint64_t X = balance.amount;
        double C = 1e-7;
        uint64_t E = t.quantity.amount;
        iq.amount = int64_t(X*C*E / (1 + E*C/2));
        print(iq);
        
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
