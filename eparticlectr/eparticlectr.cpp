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
#include "eparticlectr.hpp"
#include <typeinfo>

// This function is used to swap endianess for uint64_t's for key and javascript 58-bit int limit issues.
// Once secondary index queries are working, this will be removed
uint64_t eparticlectr::swapEndian64(uint64_t X) {
    uint64_t x = (uint64_t) X;
    x = (x & 0x00000000FFFFFFFF) << 32 | (x & 0xFFFFFFFF00000000) >> 32;
    x = (x & 0x0000FFFF0000FFFF) << 16 | (x & 0xFFFF0000FFFF0000) >> 16;
    x = (x & 0x00FF00FF00FF00FF) << 8  | (x & 0xFF00FF00FF00FF00) >> 8;
    return x;
}


// Stake IQ in exchange for brainpower
// Note that the "amount" parameter is in full precision. Dividing it by IQ_PRECISION_MULTIPLIER would give the "clean" amount with a decimal.
void eparticlectr::brainmeart( account_name staker, uint64_t amount ) {
    // Only the token contract can call this to prevent fraudulent transactions
    require_auth(TOKEN_CONTRACT_ACCTNAME);

    uint64_t newBrainpower = amount * IQ_TO_BRAINPOWER_RATIO;

    // Get the brainpower
    brainpwrtbl braintable(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    auto brainidx = braintable.get_index<N(byuser)>();
    auto brain_it = brainidx.find(staker);

    uint64_t name64t = staker;

    // Add the brainpower, creating a new table entry if the staker has never staked before
    if(brain_it == brainidx.end()){
      braintable.emplace( ARTICLE_CONTRACT_ACCTNAME, [&]( auto& b ) {
          b.user = staker;
          b.user_64t = eparticlectr::swapEndian64(staker);
          b.power = newBrainpower;
      });
    }
    else {
      brainidx.modify( brain_it, 0, [&]( auto& b ) {
          b.add(newBrainpower);
      });
    }

    // Create the stake object
    staketbl staketblobj(ARTICLE_CONTRACT_ACCTNAME, ARTICLE_CONTRACT_ACCTNAME);
    staketblobj.emplace( ARTICLE_CONTRACT_ACCTNAME, [&]( auto& s ) {
        s.id = staketblobj.available_primary_key();
        s.user = staker;
        s.user_64t = eparticlectr::swapEndian64(staker);
        s.amount = amount;
        s.timestamp = now();
        s.completion_time = now() + STAKING_DURATION;
    });
}

void eparticlectr::updatewiki( ipfshash_t& current_hash ){
    // Manually update the wikistbl. This will be removed later.
    require_auth(ARTICLE_CONTRACT_ACCTNAME);

    print("ADDING ARTICLE TO DATABASE\n");
    wikistbl wikitbl( _self, _self );
    auto wikiidx = wikitbl.get_index<N(byhash)>();
    auto wiki_it = wikiidx.find(eparticlectr::ipfs_to_key256(current_hash));
    eosio_assert(wiki_it == wikiidx.end(), "wiki already exists in database");

    wikitbl.emplace( _self,  [&]( auto& a ) {
        a.id = wikitbl.available_primary_key();
        a.hash = current_hash;
        a.parent_hash = "";
    });
}

EOSIO_ABI( eparticlectr, (brainmeart)(updatewiki) )
