#include "article.hpp"

namespace article {
}

using namespace article;

extern "C" {
    void init()  {
    }

    /// The apply method implements the dispatch of events to this contract
    void apply( uint64_t code, uint64_t action ) {
       if( code == N(everipedia.article) ) {
          if( action == N(edit) ) {}
       }
    }
}
