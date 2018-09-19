#include <everipediaiq/everipediaiq.hpp>
#include <eosiolib/eosio.hpp>

void safetransfer (const everipediaiq::transfer_args& transfer) {
    if (transfer.to != N(iqsafesendiq))
        eosio_exit(0);

    print("forward to:", transfer.memo, ":");
    account_name to = eosio::string_to_name(transfer.memo.c_str());
    print("forward to:", to);
    action(
        permission_level{ N(iqsafesendiq), N(active) }, 
        N(everipediaiq), N(transfer),
        std::make_tuple( N(iqsafesendiq), to, transfer.quantity, std::string("safetransfer") )
    ).send();
}

extern "C" {
    [[noreturn]] void apply( uint64_t receiver, uint64_t code, uint64_t action ) {
        eosio_assert( code == N(everipediaiq) && action == N(transfer), "only IQ transfers permitted");   
        safetransfer( unpack_action_data<everipediaiq::transfer_args>() );
        eosio_exit(0);
    }
}
