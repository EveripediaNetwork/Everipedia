#include <eosiolib/eosio.hpp>
#include <eosiolib/asset.hpp>

using namespace eosio;

struct transfer_args {
    name   from;
    name   to;
    asset  quantity;
    std::string memo;
};

void safetransfer (const transfer_args& transfer) {
    if (transfer.to != name("iqsafesendiq"))
        eosio_exit(0);

    print("forward to:", transfer.memo, ":");
    name to = name(transfer.memo);
    print("forward to:", to);
    action(
        permission_level{ name("iqsafesendiq"), name("active") },
        name("everipediaiq"), name("transfer"),
        std::make_tuple( name("iqsafesendiq"), to, transfer.quantity, std::string("safetransfer") )
    ).send();
}

extern "C" {
    [[noreturn]] void apply( uint64_t receiver, uint64_t code, uint64_t action ) {
        eosio_assert( code == name("everipediaiq").value && action == name("transfer").value, "only IQ transfers permitted");
        safetransfer( unpack_action_data<transfer_args>() );
        eosio_exit(0);
    }
}
