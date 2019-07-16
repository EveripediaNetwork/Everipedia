using namespace eosio;
using std::string;

const symbol IQ_SYMBOL = symbol(symbol_code("IQ"), 3);
const uint64_t IQ_PRECISION_MULTIPLIER = 1000; // 3 decimal places
const uint64_t MINIMUM_DELEGATION_TIME = 7*86400; // 7 days

class [[eosio::contract("everipediaiq")]] everipediaiq : public contract {

    struct [[eosio::table]] stats {
        asset available;
        asset staked;
        uint64_t total_shares;
    }
    typedef eosio::multi_index<name("stats"), stats> stats;

    struct [[eosio::table]] account {
        name delegator;
        uint64_t last_modified; // UNIX timestamp of last deposit
        uint64_t shares;

        uint64_t primary_key()const { return delegator; }
    };
    typedef eosio::multi_index<name("accounts"), account> accounts;

    void deposit( name from, name to, asset quantity, string memo );

    [[eosio::action]]
    void regguild( name guild );

    [[eosio::action]]
    void withdraw( name withdrawer, name guild, uint64_t amount );

    [[eosio::action]]
    void vote( name guild, uint64_t proposal_id, bool approve, uint64_t amount, string comment, string memo );
}
