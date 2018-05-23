// CURRENTLY DOES NOT COMPILE
// WORK IN PROGRESS
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
#include "eparticle.hpp"
#include <../eosio.token/eosio.token.hpp>
#include <typeinfo>

bool eparticle::isnewuser (const account_name& _thisaccount){
    return true;
}

uint64_t eparticle::getiqbalance( account_name from ) {
    // Create the account object
    eparticle::accounts accountstable( N(eosio.token), from );

    // Get the iterator to the account
    auto iqAccount_iter = accountstable.find(IQSYMBOL.name());

    // Check for an account
    if(iqAccount_iter != accountstable.end()){
        return iqAccount_iter->balance.amount;
    }
    else{
        return 0;
    }
}

void eparticle::propose_precheck( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash ) {
    // Fetch the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(proposer);

    // Re-check that enough brainpower is available
    eosio_assert(brain_it->power > EDIT_PROPOSE_BRAINPOWER, "Not enough brainpower to edit, you need to stake some more IQ using brainme first!");
}

void eparticle::propose( account_name proposer, ipfshash_t& proposed_article_hash, ipfshash_t& old_article_hash ) {
    // Check to make sure enough brainpower is present
    eparticle::propose_precheck(proposer, proposed_article_hash, old_article_hash);

    // Store the proposal
    propstbl proptable( _self, proposer );
    uint64_t propPrimaryKey = proptable.available_primary_key();
    proptable.emplace( _self, [&]( auto& a ) {
        a.id = propPrimaryKey; // TODO: need to remove this later, or account for uniqueness
        a.proposed_article_hash = proposed_article_hash;
        a.old_article_hash = old_article_hash;
        a.timestamp = now();
        a.status = ProposalStatus::pending;
    });

    // Place the vote
    eparticle::votebyhash( proposer, proposed_article_hash, true, EDIT_PROPOSE_BRAINPOWER );
}

void eparticle::votebyhash ( account_name voter, ipfshash_t& proposed_article_hash, bool approve, uint64_t amount ) {
    // Check if article exists
    propstbl proptable( _self, voter );
    auto prop_idx = proptable.get_index<N(bynewhash)>();
    auto prop_it = prop_idx.find(eparticle::ipfs_to_key256(proposed_article_hash));
    eosio_assert( prop_it != prop_idx.end(), "proposal not found" );
    uint64_t proposal_id = prop_it->id;

    // Verify voting is still in progress
    eosio_assert( now() < prop_it->timestamp + DEFAULT_VOTING_TIME, "voting period is over");

    // Consume brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(voter);
    eosio_assert(brain_it->power >= amount, "Not enough brainpower");
    braintable.modify( brain_it, 0, [&]( auto& b ) {
        b.sub(amount);
    });

    // Store vote in DB
    votestbl votetbl( _self, voter );
    auto voteidx = votetbl.get_index<N(byproposal)>();
    auto vote_it = voteidx.find( std::forward<uint64_t>(proposal_id) );
    uint64_t votePrimaryKey = votetbl.available_primary_key();

    if(vote_it == voteidx.end()){
        // Brand new vote
        votetbl.emplace( voter, [&]( auto& a ) {
             a.id = votePrimaryKey;
             a.proposal_id = proposal_id;
             a.proposed_article_hash = proposed_article_hash;
             a.approve = approve;
             a.amount = amount;
             a.voter = voter;
             a.timestamp = now();
        });
    }
    else{

      if(vote_it->approve == approve){
          // Strengthen existing vote
          voteidx.modify( vote_it, 0, [&]( auto& a ) {
              a.amount += amount;
              a.timestamp = now();
          });
      }
      else{
          if(vote_it->amount >= amount){
              // Weakening existing vote
              voteidx.modify( vote_it, 0, [&]( auto& a ) {
                  a.amount = vote_it->amount - amount;
                  a.timestamp = now();
              });
          }
          else{
              // Switch votes
              voteidx.modify( vote_it, 0, [&]( auto& a ) {
                  a.amount = amount - vote_it->amount;
                  a.approve = approve;
                  a.timestamp = now();
              });
          }
      }
    }
}

void eparticle::votebyid ( account_name voter, uint64_t proposal_id, bool approve, uint64_t amount ) {
    // Check if article exists
    propstbl proptable( _self, voter );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "proposal not found" );
    ipfshash_t thePropHash = prop_it->proposed_article_hash;

    eparticle::votebyhash(voter, thePropHash, approve, amount);
}

void eparticle::finalize( account_name from, uint64_t proposal_id ) {
    // Verify proposal exists
    propstbl proptable( _self, _self );
    auto prop_it = proptable.find( proposal_id );
    eosio_assert( prop_it != proptable.end(), "proposal not found" );

    // Verify voting period is complete
    eosio_assert( now() > prop_it->timestamp + DEFAULT_VOTING_TIME, "voting period is over");

    // Retrieve votes from DB
    votestbl votetable(_self, _self);
    auto voteidx = votetable.get_index<N(byproposal)>();
    auto vote_it = voteidx.find( std::forward<uint64_t>(proposal_id) );
    eosio_assert( vote_it != voteidx.end(), "no votes found for proposal");

    // Tally votes
    uint64_t for_votes = 0;
    uint64_t against_votes = 0;
    while(vote_it->proposal_id == proposal_id) {
        if (vote_it->approve)
            for_votes += vote_it->amount;
        else
            against_votes += vote_it->amount;
        vote_it++;
    }

    // Mark proposal as accepted or rejected. Ties are rejected
    proptable.modify( prop_it, 0, [&]( auto& a ) {
        if (for_votes > against_votes)
            a.status =  ProposalStatus::accepted;
        else
            a.status =  ProposalStatus::rejected;
    });

    // Determine slashing conditions
    // floating point is inexact, so I'm using integer arithmetic for slashing percentages
    vote_it = voteidx.find( std::forward<uint64_t>(proposal_id) );
    bool approved = (for_votes > against_votes);
    uint64_t slash_percent;
    if (approved)
        slash_percent = for_votes - against_votes;
    else
        slash_percent = against_votes - for_votes;


    while(vote_it->proposal_id == proposal_id) {
        if (vote_it->approve != approved) {
            // Slash losers
            uint64_t slash_amount = vote_it->amount;
            uint64_t runningTally = vote_it->amount;

            // Get the stakes
            staketbl staketable(_self, _self);
            auto stakeidx = staketable.get_index<N(byuser)>();
            auto stake_it = stakeidx.find(vote_it->voter);

            while(stake_it->user == vote_it->voter) {
                if(stake_it->amount >= runningTally){
                    stakeidx.modify( stake_it, 0, [&]( auto& a ) {
                        a.duration += STAKING_DURATION * slash_percent / 100;
                        a.timestamp = now();
                        runningTally -= stake_it->amount;
                    });
                }
                else{
                    // The slash amount does not fill a full stake, so the stake needs to be split
                    uint64_t newAmount = stake_it->amount - runningTally;
                    uint32_t oldTimestamp = stake_it->timestamp;
                    uint64_t oldDuration = stake_it->duration;

                    stakeidx.modify( stake_it, 0, [&]( auto& a ) {
                        a.duration += STAKING_DURATION * slash_percent / 100;
                        a.amount = runningTally;
                    });
                    staketable.emplace( vote_it->voter,  [&]( auto& a ) {
                        a.id = staketable.available_primary_key();
                        a.user = vote_it->voter;
                        a.amount = newAmount;
                        a.timestamp = oldTimestamp;
                        a.duration = oldDuration;
                    });
                    break;
                }

                stake_it++;
            }

        }
        else{
            // TODO: Reward the winners
        }
        vote_it++;
    }

    // Add article to database, or update
    wikistbl wikitbl( _self, _self );
    auto wikiidx = wikitbl.get_index<N(byhash)>();
    auto wiki_it = wikiidx.find(eparticle::ipfs_to_key256(prop_it->old_article_hash));

    if (wiki_it == wikiidx.end()){
        wikitbl.emplace( _self,  [&]( auto& a ) {
            a.id = wikitbl.available_primary_key();
            a.hash = prop_it->proposed_article_hash;
            a.parent_hash = prop_it->old_article_hash;
        });
    }
    else{
        wikiidx.modify( wiki_it, 0, [&]( auto& a ) {
            a.hash = prop_it->proposed_article_hash;
            a.parent_hash = prop_it->old_article_hash;
        });
    }


}

void eparticle::brainme( account_name staker, uint64_t amount) {
    require_auth(staker);
    uint64_t newBrainpower = amount * IQ_TO_BRAINPOWER_RATIO;

    // Check that there is enough IQ available to stake to brainpower
    uint64_t oldIQBalance = getiqbalance(staker);
    eosio_assert(oldIQBalance > 0, "Not enough IQ available to convert to brainpower");

    // Transfer IQ to the eparticle contract
    asset iqAssetPack = asset(amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
    action(permission_level{ staker, N(active) }, N(eosio.token), N(transfer), std::make_tuple(staker,
            N(eparticle), iqAssetPack, std::string(""))).send();

    // Get the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(staker);

    if(brain_it == braintable.end()){
      braintable.emplace( staker, [&]( auto& b ) {
          b.user = staker;
          b.power = newBrainpower;
      });
    }
    else {
      braintable.modify( brain_it, 0, [&]( auto& b ) {
          b.add(newBrainpower);
      });
    }

    staketbl staketblobj(_self, _self);
    staketblobj.emplace( staker, [&]( auto& s ) {
        s.id = staketblobj.available_primary_key();
        s.user = staker;
        s.amount = amount;
        s.timestamp = now();
        s.duration = STAKING_DURATION;
    });
}

void eparticle::brainclaim( account_name claimant, uint64_t amount) {
    // Get the brainpower
    brainpwrtbl braintable(_self, _self);
    auto brain_it = braintable.find(claimant);

    // Get the stakes
    staketbl staketable(_self, _self);
    auto stakeidx = staketable.get_index<N(byuser)>();
    auto stake_it = stakeidx.find(claimant);
    eosio_assert( stake_it != stakeidx.end(), "No stakes found for proposal");

    // Dummy initialization
    asset iqAssetPack;

    // Loop through the stakes
    while(stake_it != stakeidx.end() && stake_it->user == claimant) {
        // Get the age of the stake
        time timeDiff = now() - stake_it->timestamp;

        // See if the stake is over 21 days old
        if (timeDiff > STAKING_DURATION){
            // Transfer back the IQ
            iqAssetPack = asset(stake_it->amount * IQ_PRECISION_MULTIPLIER, IQSYMBOL);
            action(permission_level{ N(eparticle), N(active) }, N(eosio.token), N(transfer), std::make_tuple(N(eparticle),
                    claimant, iqAssetPack, std::string(""))).send();

            // Delete the stake.
            // Note that the erase() function increments the iterator, then gives it back after the erase is done
            stake_it = stakeidx.erase(stake_it);
        }
        else{
            stake_it++;
        }
    }
}

void eparticle::testinsert( account_name from ) {
    key256 result = eparticle::ipfs_to_key256("Qme5aRkNsaQSXU23pmM3MvRMqYa8ufqYojxgFAP143SjYJ");
    print("KEY256: ", result);

    //
    // asset assetPack = asset(10, TOKEN_SYMBOL);
    // eosio::token tokenObj = eosio::token(N(eosio.token));
    // tokenObj.transfer(from, to, assetPack, "" );


    // brainpwrtbl braintable(_self, _self);
    //
    // // Find the proposer's brainpower
    // auto brain_it = braintable.find(proposer);

    // testtbl testtableobj(_self, _self);
    //
    //
    //
    // auto testtbl_iter = testtableobj.find(name{from});
    //
    // if(testtbl_iter == testtableobj.end()){
    //   testtableobj.emplace( from, [&]( auto& t ) {
    //       t.user = name{from};
    //       t.b = 111;
    //       t.c = 222;
    //   });
    // }
    // else {
    //   testtableobj.modify( testtbl_iter, 0, [&]( auto& t) {
    //       t.user = name{from};
    //       t.b = 666;
    //       t.c = 777;
    //   });
    // }


    // staketbl staketblobj(_self, _self);
    // // This find() is only good for the id as a parameter. You need to do get_index stuff for the account_name
    // auto staketbl_iter = staketblobj.find(N(0));
    //
    // if(staketbl_iter == staketblobj.end()){
    //   print("PART1\n");
    //   staketblobj.emplace( from, [&]( auto& s ) {
    //     s.id = staketblobj.available_primary_key();
    //     s.user = name{from};
    //     s.amount = 5555;
    //     s.timestamp = now();
    //     s.duration = STAKING_DURATION;
    //   });
    // }
    // else {
    //   print("PART2\n");
    //   staketblobj.modify( staketbl_iter, 0, [&]( auto& s ) {
    //     s.amount = 6666;
    //     s.timestamp = now();
    //     s.duration = STAKING_DURATION;
    //   });
    // }

    // staketbl staketblobj(_self, from);
    // auto stake_index = staketblobj.template get_index<N(byuser)>();
    // auto staketbl_iter = stake_index.find(from);
    //
    // //prints all the stakes for a given user
    // while (staketbl_iter != stake_index.end() && staketbl_iter->user == from) {
    //     print(staketbl_iter->timestamp, "\n");
    //     staketbl_iter++;
    // }

}

EOSIO_ABI( eparticle, (brainme)(brainclaim)(finalize)(propose)(votebyhash)(testinsert) )
