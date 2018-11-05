// # 2018 Travis Moore, Kedar Iyer, Sam Kazemian
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMmdhhydNMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMNdy    hMMMMMMNdhhmMMMddMMMMMMMMMMMMM
// # MMMMMMMMMMMmh      hMMMMMMh     yMMM  hNMMMMMMMMMM
// # MMMMMMMMMNy       yMMMMMMh       MMMh   hNMMMMMMMM
// # MMMMMMMMd         dMMMMMM       hMMMh     NMMMMMMM
// # MMMMMMMd          dMMMMMN      hMMMm       mMMMMMM
// # MMMMMMm           yMMMMMM      hmmh         NMMMMM
// # MMMMMMy            hMMMMMm                  hMMMMM
// # MMMMMN             hNMMMMMmy                 MMMMM
// # MMMMMm          ymMMMMMMMMmd                 MMMMM
// # MMMMMm         dMMMMMMMMd                    MMMMM
// # MMMMMMy       mMMMMMMMm                     hMMMMM
// # MMMMMMm      dMMMMMMMm                      NMMMMM
// # MMMMMMMd     NMMMMMMM                      mMMMMMM
// # MMMMMMMMd    NMMMMMMN                     mMMMMMMM
// # MMMMMMMMMNy  mMMMMMMM                   hNMMMMMMMM
// # MMMMMMMMMMMmyyNMMMMMMm         hmh    hNMMMMMMMMMM
// # MMMMMMMMMMMMMNmNMMMMMMMNmdddmNNd   ydNMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMNdhyhdmMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMNNMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
// # MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

#include <eosiolib/asset.hpp>
#include "epsidechainn.hpp"


// Stake IQ in exchange for brainpower when user sends IQ to the contract
void epsidechainn::stake( const transfer_t& t ) {
    account_name staker = t.from;

    require_auth( staker );
    eosio_assert(t.to == _self, "transfer must be to epsidechainn. this is likely an attempted hack");
    eosio_assert(t.quantity.symbol == S(3,IQ), "only IQ can be sent to this contract");

    staketbl staketable( _self, staker );
    auto stake_it = staketable.begin();

    // new stake
    uint64_t new_brainpower = 0;
    if (stake_it == staketable.end()) {
        new_brainpower = t.quantity.amount * STAKING_DURATION / IQ_PRECISION_MULTIPLIER;
        staketable.emplace( staker, [&]( auto& s ) {
            s.balance = t.quantity;
            s.last_renewed = now();
            s.unlock_time = now() + STAKING_DURATION;
        });
    }

    // existing stake
    else {
        new_brainpower = (stake_it->balance.amount + t.quantity.amount) * (now() - stake_it->last_renewed + STAKING_DURATION) / IQ_PRECISION_MULTIPLIER;
        staketable.emplace( staker, [&]( auto& s ) {
            s.balance += t.quantity;
            s.last_renewed = now();
            s.unlock_time = now() + STAKING_DURATION;
        });
    }

    // Alert sidechain to issue new brainpower
    action(
        permission_level{ _self, N(active) }, 
        _self, N(brainissue),
        std::make_tuple( staker, new_brainpower )
    ).send_context_free();
}

// Redeem IQ, with a specific stake specified
void epsidechainn::unstake( const unstake_t& u  ) {
    require_auth(u.unstaker);

    // Validate symbol and amount
    eosio_assert(u.quantity.symbol == S(3,IQ), "only IQ can unstaked");

    // Get the stakes
    staketbl staketable( _self,  u.unstaker );
    auto stake_it = staketable.begin();
    eosio_assert( stake_it != staketable.end(), "No stake found for user");

    // Make sure the stake can be claimed
    eosio_assert( now() > stake_it->unlock_time, "Staking period not over yet");

    // Prevent excessive withdrawal
    eosio_assert( u.quantity >= stake_it->balance, "Not enough stake to withdraw");

    // Subtract quantity from stake
    staketable.modify( stake_it, u.unstaker, [&]( auto& s ) {
        s.balance -= u.quantity;
    });

    // Transfer back the IQ
    // use the safesend temporarily until RAM stealing exploit is fixed
    auto n = name{u.unstaker};
    std::string tempmemo = n.to_string();
    action(
        permission_level{ _self, N(active) }, 
        N(everipediaiq), N(transfer),
        std::make_tuple(_self, N(iqsafesendiq), u.quantity, tempmemo)
    ).send();

    // Delete the stake if the balance is zero.
    if (stake_it->balance.amount == 0)
        staketable.erase( stake_it );
}

extern "C" {
    [[noreturn]] void apply( uint64_t receiver, uint64_t code, uint64_t action ) {
        epsidechainn e( N(epsidechainn) );
        if (code == N(epsidechainn) && action == N(unstake)) {
            e.unstake( unpack_action_data<epsidechainn::unstake_t>() );
        }
        if (code == N(epsidechainn) && action == N(renew)) {
            e.renew( unpack_action_data<epsidechainn::renew_t>() );
        }
        else if (code == N(everipediaiq) && action == N(transfer)) {
            e.stake( unpack_action_data<epsidechainn::transfer_t>() );
        }
        eosio_exit(0);
    }
}
