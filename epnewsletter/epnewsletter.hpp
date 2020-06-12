/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#pragma once

#include <eosio/asset.hpp>
#include <eosio/eosio.hpp>
#include <eosio/system.hpp>

#include <string>

using namespace eosio;
using std::string;

class [[eosio::contract("epnewsletter")]] epnewsletter : public contract {
	using contract::contract;

	public:
		using ipfshash_t = std::string;

		[[eosio::action]]
		void signup(    
			std::string oreid,
			std::string epid,
			std::string s_type,
			std::string otp_hash
		);


  	private:
};
