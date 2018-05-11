#include <eosiolib/eosio.hpp>
#include <eosiolib/db.h>

using namespace eosio;

class epgovernance : public contract {
private:
    using ipfshash_t = unsigned char[34];
    enum Module { token, article, _epgovernance };
    enum Status { Pending, Approved, Rejected };

    // DB Table Schemas
    struct Proposal {
        Proposal () { status = Status::Pending; }

        uint64_t id;
        Module module;
        ipfshash_t file;
        Status status;

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
        uint64_t get_proposal_id()const { return proposal_id; }
    };

    eosio::multi_index< N(epgovernance), Proposal > _proposals;
    eosio::multi_index< N(epgovernance), Stake ,
        indexed_by< N(byproposal), const_mem_fun<
            Stake, uint64_t, &Stake::get_proposal_id> >
    > _stakes;

public:
  epgovernance( account_name self )
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

    void tally_votes (uint64_t proposal_id) {
        auto proposals_idx = _stakes.get_index<N(byproposal)>();
        auto stake_itr = proposals_idx.find( std::forward<uint64_t>(proposal_id) );
        int yes_votes = 0;
        int no_votes = 0;
        while (stake_itr->proposal_id == proposal_id) {
            if (stake_itr->approve)
                yes_votes += stake_itr->amount;
            else
                no_votes += stake_itr->amount;
            stake_itr++;
        }

        const auto& proposal = _proposals.get( proposal_id );
        if (yes_votes > no_votes) {
            _proposals.modify( proposal, proposal_id, [&]( auto& a ) {
                a.status = Status::Approved;
            });
        }
        else {
            _proposals.modify( proposal, proposal_id, [&]( auto& a ) {
                a.status = Status::Rejected;
            });
        }
    }

};
