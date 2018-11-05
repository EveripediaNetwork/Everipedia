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

#include <eosiolib/eosio.hpp>

using namespace eosio;

const uint32_t STAKING_DURATION = 86400 * 3; // 3 days
const uint64_t IQ_PRECISION_MULTIPLIER = 1000;

class epsidechainn : public eosio::contract {

public:

    // ===============================================================
    // Action structs

    // IQ transfer struct
    // Needed to pass to stake function when IQ is received by the contract
    struct transfer_t {
        account_name from;
        account_name to;
        asset quantity;
        std::string memo;
    };

    struct unstake_t {
        account_name unstaker;
        asset quantity;
    };

    struct renew_t {
        account_name renewer;
    };

    // ===============================================================
    // Table structs
    
    // Staked tokens to move to the sidechain
    // @abi table
    struct stake {
        asset balance;
        uint32_t last_renewed;
        uint32_t unlock_time;

        auto primary_key()const { return balance.symbol.name(); }
    };
    
    // stake table
    // @abi table
    typedef eosio::multi_index<N(staketbl), stake > staketbl;

    epsidechainn(account_name self) : contract(self) {}

    //  ==================================================
    // User Actions

    void stake( const transfer_t& t );

    void renew( const renew_t& t );

    void unstake ( const unstake_t& t );
    
    //  ==================================================
    // Logging Actions

    void brainissue( account_name user, uint64_t brainpower );
};
