#include <eosiolib/eosio.hpp>
#include <eosiolib/db.h>

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

        uint64_t primary_key()const { return id; }
    };

    eosio::multi_index< N(epgovernance), Proposal > _proposals;
    eosio::multi_index< N(epgovernance), Stake > _stakes;

public:
  governance( account_name self )
  :contract(self),_proposals( _self, _self),_stakes(_self, _self){}

    void propose( Module module, std::string file ) {
	    Proposal proposal;
        proposal.file = file;
        proposal.module = module;
        _proposals.emplace( _self  , [&]( auto& p ) {
            p.file = file;
            p.module = module;
        });
    }

    void stake( account_name staker, uint64_t proposal_id, uint64_t amount, bool approve ) {
        require_auth(staker);

        // TODO: Transfer IQ to this contract

        Stake stake;
        stake.proposal_id = proposal_id;
        stake.approve = approve;
        _stakes.emplace( _self , [&]( auto& s ) {
            // TODO: Incrementing IDs
            s.id = 1; 
            s.staker = staker;
            s.amount = amount;
            s.approve = approve;
        });
    }

    void tally_votes( uint64_t proposal_id ) {
    }

};

