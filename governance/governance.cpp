#include <eosiolib/eosio.hpp>

class governance : public contract {
private:
    using byte = unsigned char;
    enum Module { token, article, _governance };
    enum Opinion { Yes, No };

    // DB Table Schemas
    struct Proposal {
        Module module;
        uint64_t file;
        uint64_t primary_key()const { return file; }
    };

    struct Stake {
        uint64_t id;
        uint64_t proposal_id;
        account_name staker;
        uint64_t amount;
        Opinion opinion;
        bool active;

        uint64_t primary_key()const { return id; }
    };

    eosio::multi_index< N(epgovernance), Proposal > _proposals;
    eosio::multi_index< N(epgovernance), Stake > _stakes;

public:

    void propose( Module module, uint64_t file ) {
	
    }

    void stake( uint64_t proposal_id ) {
        
    }

};

