#include <eoslib/eos.hpp>
#include <eoslib/db.hpp>

namespace article {
    using byte = unsigned char;

    // Message Schemas
    struct Edit {
        byte old_article_hash[34];
        byte edit_diff_hash[34];        
        byte new_article_hash[34];
    };


    // DB Table Schemas
    struct Wiki {
        byte ipfs_hash[34];
    };

    using wikis = eosio::table<
                    N(eparticle), // scope
                    N(eparticle), // code (contract w/ write permission)
                    N(wiki),      // table name
                    Wiki,         // data type (schema)
                    byte[34]>;    // primary key data type

    // ABI Functions
    void apply_article_edit( const Edit& edit_msg );
} 
