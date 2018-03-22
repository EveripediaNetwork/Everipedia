#include "governance.hpp"
#include <iq/iq.hpp>
#include <article/article.hpp>

namespace governance {
    using namespace eosio;

    void apply_governance_propose( const Propose& propose_msg ) {
        Proposal proposal;
        for (int i=0; i < 34; i++)
            proposal.ipfs_hash[i] = propose_msg.ipfs_hash[i];
        proposal.module = propose_msg.module;

        // Storing to DB isn't working
        //proposals::store(proposal);
    }

    void apply_governance_stake( const Stake& stake_msg ) {
        
    }

}

using namespace governance;

extern "C" {
    void init()  {}

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t code, uint64_t action ) {
        if( code == N(epgovernance) ) {
            if( action == N(propose) ) {
                apply_governance_propose(current_message<Propose>());
            }
            else if( action == N(stake) ) {
                apply_governance_propose(current_message<Propose>());
            }
        }
    }
}
