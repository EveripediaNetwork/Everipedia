#include "article.hpp"
#include <epiq/epiq.hpp>

namespace article {
    using namespace eosio;

    void apply_article_edit( const Edit& edit_msg ) {

    }
}

using namespace article;

extern "C" {
    void init()  {}

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t code, uint64_t action ) {
        if( code == N(everipedia.article) ) {
            if( action == N(edit) ) {
                apply_article_edit(current_message<Edit>());
            }
        }
    }
}
