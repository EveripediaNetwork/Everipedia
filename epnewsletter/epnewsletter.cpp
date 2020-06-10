
#include "epnewsletter.hpp"


[[eosio::action]]
void epnewsletter::signup(
    std::string email,
    std::string enrollee,
    std::string s_type,
    std::string s_uname
)
{
    
}

EOSIO_DISPATCH( epnewsletter, (signup) )
