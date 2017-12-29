#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace article {

    struct wiki {

    };

   using wikis = eosio::table<N(everipedia.article),N(everipedia.article),N(wiki),wiki,uint64_t>;
} 
