#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace governance {
    using byte = unsigned char;
    enum Module { token, article, governance };
    enum Opinion { Yes, No };

    // Message Schemas
    struct Propose {
        Module module;
        byte ipfs_hash[34];
    };

    struct Vote {
        uint64_t proposal_id;
        uint64_t amount;
    };


    // DB Table Schemas
    struct Proposal {
        Proposal() {} // empty constructor

        Module module;
        byte ipfs_hash[34];
    };

    struct Stake {
        Stake() {} // empty constructor

        uint64_t id;
        uint64_t proposal_id;
        account_name staker;
        uint64_t amount;
        Opinion opinion;
        bool active;
    };

    using proposals = eosio::table<
                    N(epgovernance), // scope
                    N(epgovernance), // code (contract w/ write permission)
                    N(proposal),      // table name
                    Proposal,         // data type (schema)
                    byte[34]>;    // primary key data type

    using stakes = eosio::table<
                    N(epgovernance), // scope
                    N(epgovernance), // code (contract w/ write permission)
                    N(stake),      // table name
                    Stake,         // data type (schema)
                    uint64_t>;    // primary key data type
}
