#include <eosiolib/eosio.hpp>

class governance : public contract {
private:
    using byte = unsigned char;
    enum Module { token, article, _governance };

    // DB Table Schemas
    struct Proposal {
        Proposal () {}

        Module module;
        std::string file;

        std::string primary_key()const { return file; }
    };

    struct Stake {
        Stake () {}

        uint64_t id;
        uint64_t proposal_id;
        account_name staker;
        uint64_t amount;
        bool approve;
        bool active;

        uint64_t primary_key()const { return id; }
    };

    eosio::multi_index< N(epgovernance), Proposal > _proposals;
    eosio::multi_index< N(epgovernance), Stake > _stakes;

public:

    void propose( Module module, std::string file ) {
	    Proposal proposal;
        proposal.file = file;
        proposal.module = module;
        //_proposals.insert( proposal );
    }

    void stake( uint64_t proposal_id, bool approve ) {
        Stake stake;
        stake.proposal_id = proposal_id;
        stake.approve = approve;
        //_stakes.insert( stake );
    }

};

