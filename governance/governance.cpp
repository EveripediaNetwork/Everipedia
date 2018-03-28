#include <eosiolib/eosio.hpp>
#include <eosiolib/db.h>

using namespace eosio;

class governance : public contract {
private:
    using ipfshash_t = unsigned char[34];
    enum Module { token, article, _governance };

    // DB Table Schemas
    struct Proposal {
        Proposal () {}

        uint64_t id;
        Module module;
        ipfshash_t file;

        uint64_t primary_key()const { return id; }
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

    void propose( Module module, ipfshash_t file ) {
        _proposals.emplace( _self , [&]( auto& p ) {
            // TODO: Incrementing IDs
            p.id = 1;
            p.module = module;

            // copy ipfs hash
            for (int i=0; i < 34; i++)
                p.file[i] = file[i];
        });
    }

    void stake( account_name staker, uint64_t proposal_id, uint64_t amount, bool approve ) {
        require_auth(staker);

        // TODO: Transfer IQ to this contract

        _stakes.emplace( staker , [&]( auto& s ) {
            // TODO: Incrementing IDs
            s.id = 1; 
            s.proposal_id = proposal_id;
            s.staker = staker;
            s.amount = amount;
            s.approve = approve;
        });
    }

};

