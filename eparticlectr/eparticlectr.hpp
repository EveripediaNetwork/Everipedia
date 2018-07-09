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

#include <eosiolib/eosio.hpp>
#include <ctime>

using namespace eosio;

const account_name ARTICLE_CONTRACT_ACCTNAME = N(eparticlectr);


class eparticlectr : public eosio::contract {

private:
    using ipfshash_t = std::string;

    static eosio::key256 ipfs_to_key256(const ipfshash_t& input) {
	key256 returnKey;
        if (input == "") {
	    returnKey = key256::make_from_word_sequence<uint64_t>(0ULL, 0ULL, 0ULL, 0ULL);
        }
	else {
            // This is needed for indexing since indexes cannot be done by strings, only max key256's, for now...
            uint64_t p1 = eosio::string_to_name(input.substr(0, 12).c_str());
            uint64_t p2 = eosio::string_to_name(input.substr(13, 24).c_str());
            uint64_t p3 = eosio::string_to_name(input.substr(25, 36).c_str());
            uint64_t p4 = eosio::string_to_name(input.substr(37, 45).c_str());
            returnKey = key256::make_from_word_sequence<uint64_t>(p1, p2, p3, p4);
	}
        return returnKey;
    }

    // ==================================================
    // ==================================================
    // ==================================================
    // DATABASE SCHEMAS

    // Wiki articles
    // @abi table
    struct wiki {
          uint64_t id;
          ipfshash_t hash; // IPFS hash of the current consensus article version
          ipfshash_t parent_hash; // IPFS hash of the parent article versiond

          uint64_t primary_key () const { return id; }
          key256 get_hash_key256 () const { return eparticlectr::ipfs_to_key256(hash); }
          key256 get_parent_hash_key256 () const { return eparticlectr::ipfs_to_key256(parent_hash); }
    };

    //  ==================================================
    //  ==================================================
    //  ==================================================
    // DATABASE TABLES
    // GUIDE: https://github.com/EOSIO/eos/wiki/Persistence-API

    // wikis table
    // indexed by wiki hash
    // indexed by parent hash
    // @abi table
    typedef eosio::multi_index<N(wikistbl), wiki,
        indexed_by< N(byhash), const_mem_fun< wiki, eosio::key256, &wiki::get_hash_key256 >>,
        indexed_by< N(byoldhash), const_mem_fun< wiki, eosio::key256, &wiki::get_parent_hash_key256 >>
    > wikistbl; // EOS table for the articles

public:
    eparticlectr(account_name self) : contract(self) {};



    void updatewiki( ipfshash_t& current_hash );

};
