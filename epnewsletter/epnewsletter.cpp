
#include "epnewsletter.hpp"


[[eosio::action]]
void epnewsletter::signup(
    std::string oreid,
    std::string epid,
    std::string s_type,
    std::string otp_hash
)
{
    
}

EOSIO_DISPATCH( epnewsletter, (signup) )
