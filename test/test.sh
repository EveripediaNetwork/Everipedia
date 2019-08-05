#!/bin/bash

CYAN='\033[1;36m'
NC='\033[0m'

trap ctrl_c INT
function ctrl_c {
    exit 11;
}

BOOTSTRAP=0 # 1 if chain bootstrapping (bios, system contract, etc.) is needed, else 0
RECOMPILE_AND_RESET_EOSIO_CONTRACTS=0
BUILD=0
HELP=0
EOSIO_CONTRACTS_ROOT=/home/kedar/eosio.contracts/build/contracts/
NODEOS_HOST="127.0.0.1"
NODEOS_PROTOCOL="http"
NODEOS_PORT="8888"
NODEOS_LOCATION="${NODEOS_PROTOCOL}://${NODEOS_HOST}:${NODEOS_PORT}"

alias cleos="cleos --url=${NODEOS_LOCATION}"

#######################################
## HELPERS

function balance {
    cleos get table everipediaiq $1 accounts | jq ".rows[0].balance" | tr -d '"' | awk '{print $1}'
}

assert ()
{

    if [ $1 -eq 0 ]; then
        FAIL_LINE=$( caller | awk '{print $1}')
        echo -e "Assertion failed. Line $FAIL_LINE:"
        head -n $FAIL_LINE $BASH_SOURCE | tail -n 1
        exit 99
    fi
}

ipfsgen () {
    echo -e "Qm$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 44 | head -n 1)"
}

accountgen () {
    echo -e "$(cat /dev/urandom | tr -dc 'a-z1-5' | fold -w 12 | head -n 1)"
}

titlegen () {
    cat /dev/urandom | tr -dc 'a-z\-' | fold -w 15 | head -n 1
}

#################################

# Parse args
OPTIONS=$(getopt -o bsh --long build,bootstrap,help: -n test.sh -- "$@")
if [ $? != 0 ] ; then echo -e "Failed parsing options." >&2 ; exit 1 ; fi
eval set -- "$OPTIONS"
while true; do
  case "$1" in
    -h | --help ) HELP=1; shift;;
    -b | --build ) BUILD=1; shift ;;
    -s | --bootstrap ) BOOTSTRAP=1; shift ;;
    -- ) shift; break ;;
    * ) break ;;
  esac
done

if [ $HELP -eq 1 ]; then
    echo -e "Usage ./test.sh [-b | --build][-s | --bootstrap][-h | --help]";
    exit 0
fi


if [ ! -e test.sh ]; then
    echo "Testing from wrong directory. Must be in test/ directory"
    exit 1;
fi

# Don't allow tests on mainnet
CHAIN_ID=$(cleos get info | jq ".chain_id" | tr -d '"')
if [ $CHAIN_ID = "aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906" ]; then
    >&2 echo -e "Cannot run test on mainnet"
    exit 1
fi

# Build
if [ $BUILD -eq 1 ]; then
    sed -i -e 's/REWARD_INTERVAL = 1800/REWARD_INTERVAL = 5/g' ../eparticlectr/eparticlectr.hpp
    sed -i -e 's/DEFAULT_VOTING_TIME = 43200/DEFAULT_VOTING_TIME = 3/g' ../eparticlectr/eparticlectr.hpp
    sed -i -e 's/STAKING_DURATION = 21 \* 86400/STAKING_DURATION = 5/g' ../eparticlectr/eparticlectr.hpp
    sed -i -e 's/MINIMUM_DELEGATION_TIME = 7\*86400/MINIMUM_DELEGATION_TIME = 5/g' ../eparticlectr/eparticlectr.hpp
    cd ..
    bash build.sh
    cd test
    sed -i -e 's/REWARD_INTERVAL = 5/REWARD_INTERVAL = 1800/g' ../eparticlectr/eparticlectr.hpp
    sed -i -e 's/DEFAULT_VOTING_TIME = 3/DEFAULT_VOTING_TIME = 43200/g' ../eparticlectr/eparticlectr.hpp
    sed -i -e 's/STAKING_DURATION = 5/STAKING_DURATION = 21 \* 86400/g' ../eparticlectr/eparticlectr.hpp
    sed -i -e 's/MINIMUM_DELEGATION_TIME = 5/MINIMUM_DELEGATION_TIME = 7\*86400/g' ../eparticlectr/eparticlectr.hpp
fi

if [ $BOOTSTRAP -eq 1 ]; then
    bash bootstrap.sh
fi

## Deploy contracts
echo -e "${CYAN}-----------------------DEPLOYING EVERIPEDIA CONTRACTS AGAIN-----------------------${NC}"
cleos set contract everipediaiq ../everipediaiq/
cleos set contract eparticlectr ../eparticlectr/

# No transfer fees for privileged accounts
OLD_BALANCE1=$(balance eptestusersa)
OLD_BALANCE2=$(balance eptestusersb)
OLD_BALANCE3=$(balance eptestusersc)
OLD_BALANCE4=$(balance eptestusersd)
OLD_BALANCE5=$(balance eptestuserse)
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)
OLD_FEE_BALANCE=$(balance epiqtokenfee)
OLD_SUPPLY=$(cleos get table everipediaiq IQ stat | jq ".rows[0].supply" | tr -d '"' | awk '{print $1}')

# Test IQ transfers
echo -e "${CYAN}-----------------------MOVING TOKENS FROM THE CONTRACT TO SOME USERS -----------------------${NC}"
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersa", "10000.000 IQ", "test"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersb", "10000.000 IQ", "test"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersc", "10000.000 IQ", "test"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersd", "10000.000 IQ", "test"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestuserse", "10000.000 IQ", "test"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersf", "10000.000 IQ", "test"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersg", "10000.000 IQ", "test"]' -p everipediaiq
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
NEW_BALANCE2=$(balance eptestusersb)
NEW_BALANCE3=$(balance eptestusersc)
NEW_BALANCE4=$(balance eptestusersd)
NEW_BALANCE5=$(balance eptestuserse)
NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)

assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 10000")
assert $(bc <<< "$NEW_BALANCE2 - $OLD_BALANCE2 == 10000")
assert $(bc <<< "$NEW_BALANCE3 - $OLD_BALANCE3 == 10000")
assert $(bc <<< "$NEW_BALANCE4 - $OLD_BALANCE4 == 10000")
assert $(bc <<< "$NEW_BALANCE5 - $OLD_BALANCE5 == 10000")
assert $(bc <<< "$NEW_BALANCE6 - $OLD_BALANCE6 == 10000")
assert $(bc <<< "$NEW_BALANCE7 - $OLD_BALANCE7 == 10000")

# Standard transfers
OLD_BALANCE1=$(balance eptestusersa)
OLD_BALANCE2=$(balance eptestusersb)
OLD_BALANCE3=$(balance eptestusersc)
OLD_BALANCE4=$(balance eptestusersd)
OLD_BALANCE5=$(balance eptestuserse)
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)

# Standard transfers
echo -e "${CYAN}-----------------------MOVING TOKENS FROM ONE USER TO THE NEXT, UNSAFELY-----------------------${NC}"
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersb", "1000.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersc", "1000.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersd", "1000.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestuserse", "1000.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersf", "1000.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersg", "1000.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
NEW_BALANCE2=$(balance eptestusersb)
NEW_BALANCE3=$(balance eptestusersc)
NEW_BALANCE4=$(balance eptestusersd)
NEW_BALANCE5=$(balance eptestuserse)
NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)

assert $(bc <<< "$OLD_BALANCE1 - $NEW_BALANCE1 == 6000")
assert $(bc <<< "$NEW_BALANCE2 - $OLD_BALANCE2 == 1000")
assert $(bc <<< "$NEW_BALANCE3 - $OLD_BALANCE3 == 1000")
assert $(bc <<< "$NEW_BALANCE4 - $OLD_BALANCE4 == 1000")
assert $(bc <<< "$NEW_BALANCE5 - $OLD_BALANCE5 == 1000")
assert $(bc <<< "$NEW_BALANCE6 - $OLD_BALANCE6 == 1000")
assert $(bc <<< "$NEW_BALANCE7 - $OLD_BALANCE7 == 1000")

# Failed transfers
echo -e "${CYAN}-----------------------NEXT THREE TRANSFERS SHOULD FAIL-----------------------${NC}"
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersb", "10000000.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersb", "0.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersb", "-100.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 1")

# Burns
echo -e "${CYAN}-----------------------TESTING BURNS-----------------------${NC}"
OLD_SUPPLY=$(cleos get table everipediaiq IQ stat | jq ".rows[0].supply" | tr -d '"' | awk '{print $1}')
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)

cleos push action everipediaiq burn '["eptestusersg", "1000.000 IQ", "test"]' -p eptestusersg
assert $(bc <<< "$? == 0")
cleos push action everipediaiq burn '["eptestusersf", "1000.000 IQ", "test"]' -p eptestusersf
assert $(bc <<< "$? == 0")

NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)
NEW_SUPPLY=$(cleos get table everipediaiq IQ stat | jq ".rows[0].supply" | tr -d '"' | awk '{print $1}')

assert $(bc <<< "$OLD_BALANCE6 - $NEW_BALANCE6 == 1000")
assert $(bc <<< "$OLD_BALANCE7 - $NEW_BALANCE7 == 1000")
assert $(bc <<< "$OLD_SUPPLY - $NEW_SUPPLY == 2000")

# Failed burns
echo -e "${CYAN}-----------------------FAILED BURNS-----------------------${NC}"
cleos push action everipediaiq burn '["eptestusersg", "1000.000 IQ", "test"]' -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action everipediaiq burn '["eptestusersf", "10000000.000 IQ", "test"]' -p eptestusersf
assert $(bc <<< "$? == 1")

# Self-Delegate
echo -e "${CYAN}-----------------------DEPOSITS-----------------------${NC}"
cleos push action everipediaiq transfer '["eptestusersa", "eparticlectr", "2000.000 IQ", "delegate:eptestusersa"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersb", "eparticlectr", "2000.000 IQ", "delegate:eptestusersb"]' -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersc", "eparticlectr", "2000.000 IQ", "delegate:eptestusersc"]' -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersd", "eparticlectr", "2000.000 IQ", "delegate:eptestusersd"]' -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestuserse", "eparticlectr", "2000.000 IQ", "delegate:eptestuserse"]' -p eptestuserse
assert $(bc <<< "$? == 0")

# Deposit to others
echo -e "${CYAN}-----------------------DELEGATION-----------------------${NC}"
OLD_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')

STAKED_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
STAKED_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
TOTAL_SHARES6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].total_shares")
TOTAL_SHARES7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].total_shares")
SHARE_PRICE6=$(bc <<< "($OLD_BALANCE6 + $STAKED_BALANCE6) * 1000 / $TOTAL_SHARES6")
SHARE_PRICE7=$(bc <<< "($OLD_BALANCE7 + $STAKED_BALANCE7) * 1000 / $TOTAL_SHARES7")

OLD_SHARES1=$(cleos get table eparticlectr eptestusersa accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
OLD_SHARES2=$(cleos get table eparticlectr eptestusersb accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
OLD_SHARES3=$(cleos get table eparticlectr eptestusersc accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
OLD_SHARES4=$(cleos get table eparticlectr eptestusersd accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')
OLD_SHARES5=$(cleos get table eparticlectr eptestuserse accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')

cleos push action everipediaiq transfer '["eptestusersa", "eparticlectr", "1000.000 IQ", "delegate:eptestusersf"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersb", "eparticlectr", "1000.000 IQ", "delegate:eptestusersf"]' -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersc", "eparticlectr", "1000.000 IQ", "delegate:eptestusersf"]' -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersd", "eparticlectr", "1000.000 IQ", "delegate:eptestusersg"]' -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestuserse", "eparticlectr", "1000.000 IQ", "delegate:eptestusersg"]' -p eptestuserse
assert $(bc <<< "$? == 0")

NEW_SHARES1=$(cleos get table eparticlectr eptestusersa accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES2=$(cleos get table eparticlectr eptestusersb accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES3=$(cleos get table eparticlectr eptestusersc accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES4=$(cleos get table eparticlectr eptestusersd accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')
NEW_SHARES5=$(cleos get table eparticlectr eptestuserse accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')
NEW_SHARES6=$(cleos get table eparticlectr eptestusersf accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES7=$(cleos get table eparticlectr eptestusersg accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')

EXPECTED_SHARES6=$(bc <<< "1000000 / $SHARE_PRICE6")
EXPECTED_SHARES7=$(bc <<< "1000000 / $SHARE_PRICE7")

assert $(bc <<< "$NEW_SHARES1 - $OLD_SHARES1 == $EXPECTED_SHARES6")
assert $(bc <<< "$NEW_SHARES2 - $OLD_SHARES2 == $EXPECTED_SHARES6")
assert $(bc <<< "$NEW_SHARES3 - $OLD_SHARES3 == $EXPECTED_SHARES6")
assert $(bc <<< "$NEW_SHARES4 - $OLD_SHARES4 == $EXPECTED_SHARES7")
assert $(bc <<< "$NEW_SHARES5 - $OLD_SHARES5 == $EXPECTED_SHARES7")

NEW_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
TOTAL_SHARES6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].total_shares")
TOTAL_SHARES7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].total_shares")
SUM_SHARES6=$(bc <<< "$NEW_SHARES1 + $NEW_SHARES2 + $NEW_SHARES3 + $NEW_SHARES6")
SUM_SHARES7=$(bc <<< "$NEW_SHARES4 + $NEW_SHARES5 + $NEW_SHARES7")
assert $(bc <<< "$NEW_BALANCE6 - $OLD_BALANCE6 == 3000.000")
assert $(bc <<< "$NEW_BALANCE7 - $OLD_BALANCE7 == 2000.000")
assert $(bc <<< "$SUM_SHARES6 == $TOTAL_SHARES6")
assert $(bc <<< "$SUM_SHARES7 == $TOTAL_SHARES7")

# Too soon withdrawal
echo -e "${CYAN}-----------------------FAILED IMMEDIATE WITHDRAWALS-----------------------${NC}"
cleos push action eparticlectr withdraw '["eptestusersa", "eptestusersf", 100, "eptestusersa"]' -p eptestusersa
assert $(bc <<< "$? == 1")

echo -e "${CYAN}-----------------------SUCCESSFUL IMMEDIATE BOOT-----------------------${NC}"
cleos push action eparticlectr withdraw '["eptestusersa", "eptestusersf", 100, "eptestusersf"]' -p eptestusersf
assert $(bc <<< "$? == 0")

# Failed delegations
echo -e "${CYAN}-----------------------FAILED DELEGATION-----------------------${NC}"
cleos push action everipediaiq transfer '["eptestusersa", "eparticlectr", "1000.000 IQ", "delegat:eptestusersf"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action everipediaiq transfer '["eptestusersa", "eparticlectr", "1000.000 IQ", "Editor IQ reward:eptestusersf"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action everipediaiq transfer '["eptestusersa", "eparticlectr", "1000.000 IQ", "delegate:eptestusersf"]' -p eptestusersb
assert $(bc <<< "$? == 1")
cleos push action everipediaiq transfer '["eptestusersa", "eparticlectr", "10000000.000 IQ", "delegate:eptestusersf"]' -p eptestusersa
assert $(bc <<< "$? == 1")

# Ban delegation
echo -e "${CYAN}-----------------------BLOCK DELEGATION-----------------------${NC}"
ACCOUNT1=$(accountgen)
cleos push action eparticlectr allowdelegat '["eptestusersf", false]' -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eparticlectr", "1001.000 IQ", "delegate:eptestusersf"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action everipediaiq transfer "[\"eptestusersb\", \"eparticlectr\", \"1001.000 IQ\", \"delegate:$ACCOUNT1\"]" -p eptestusersb
assert $(bc <<< "$? == 1")
cleos push action eparticlectr allowdelegat '["eptestusersf", true]' -p eptestusersf
assert $(bc <<< "$? == 0")

# Proposals
echo -e "${CYAN}-----------------------TEST PROPOSALS-----------------------${NC}"
IPFS1=$(ipfsgen)
IPFS2=$(ipfsgen)
IPFS3=$(ipfsgen)
IPFS4=$(ipfsgen)
IPFS5=$(ipfsgen)
IPFS6=$(ipfsgen)
IPFS7=$(ipfsgen)
IPFS8=$(ipfsgen)

SLUG1=$(titlegen)
SLUG2=$(titlegen)
SLUG3=$(titlegen)
SLUG4=$(titlegen)
SLUG5=$(titlegen)
SLUG6=$(titlegen)
SLUG7=$(titlegen)
SLUG8=$(titlegen)

cleos push action eparticlectr propose2 "[ \"eptestusersa\", \"$SLUG1\", \"$IPFS1\", \"en\", -1, \"new wiki\", \"memoing\"]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose2 "[ \"eptestusersb\", \"$SLUG2\", \"$IPFS2\", \"kr\", -1, \"new wiki\", \"memoing\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose2 "[ \"eptestusersc\", \"$SLUG3\", \"$IPFS3\", \"zh-Hans\", -1, \"new wiki\", \"memoing\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose2 "[ \"eptestusersd\", \"$SLUG4\", \"$IPFS4\", \"en\", 2, \"new wiki. existing group\", \"memoing\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose2 "[ \"eptestusersf\", \"$SLUG1\", \"$IPFS1\", \"kr\", 0, \"update lang code\", \"memoing\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose2 "[ \"eptestusersf\", \"$SLUG2\", \"$IPFS5\", \"kr\", 5, \"update hash\", \"memoing\"]" -p eptestusersf
assert $(bc <<< "$? == 0")

# Failed proposals
echo -e "${CYAN}-----------------------NEXT SET OF PROPOSALS SHOULD FAIL-----------------------${NC}"
cleos push action eparticlectr propose2 "[ \"eptestusersf\", \"7-Dwarfs-of Christmas-have-too-long-a-title-matesssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss\", \"$IPFS1\", \"en\", -1, \"commenting\", \"memoing\" ]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action eparticlectr propose2 "[ \"eptestusersf\", \"$SLUG8\", \"$IPFS1\", \"en\", -2, \"specifying a group ID below -1\", \"memoing\"]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action eparticlectr propose2 "[ \"eptestusersf\", \"$SLUG8\", \"$IPFS1\", \"zh-Hans 02\", -1, \"too long a lang code\", \"memoing\"]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action eparticlectr propose2 "[ \"eptestusersf\", \"$SLUG8\", \"$IPFS2 $IPFS1\", \"zh\", -1, \"too long an IPFS string\", \"memoing\"]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action eparticlectr propose2 "[ \"eptestuserse\", \"$SLUG8\", \"$IPFS6\", \"en\", 100038, \"wrong authorization\", \"memoing\"]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action eparticlectr propose2 "[ \"eptestuserse\", \"\", \"$IPFS6\", \"en\", 100038, \"empty slug\", \"memoing\"]" -p eptestuserse
assert $(bc <<< "$? == 1")

echo -e "${CYAN}Wait for proposals to be mined...${NC}"
sleep 1

# Votes
PROPS=$(cleos get table eparticlectr eparticlectr propstbl2 -r | jq ".rows")
PROPID6=$(echo $PROPS | jq ".[0].id")
PROPID5=$(echo $PROPS | jq ".[1].id")
PROPID4=$(echo $PROPS | jq ".[2].id")
PROPID3=$(echo $PROPS | jq ".[3].id")
PROPID2=$(echo $PROPS | jq ".[4].id")
PROPID1=$(echo $PROPS | jq ".[5].id")

# Mark pre-vote balances
OLD_AVAILABLE_BALANCE2=$(cleos get table eparticlectr eptestusersb stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_AVAILABLE_BALANCE3=$(cleos get table eparticlectr eptestusersc stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_AVAILABLE_BALANCE4=$(cleos get table eparticlectr eptestusersd stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_AVAILABLE_BALANCE5=$(cleos get table eparticlectr eptestuserse stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_AVAILABLE_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_AVAILABLE_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')

OLD_STAKED_BALANCE2=$(cleos get table eparticlectr eptestusersb stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
OLD_STAKED_BALANCE3=$(cleos get table eparticlectr eptestusersc stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
OLD_STAKED_BALANCE4=$(cleos get table eparticlectr eptestusersd stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
OLD_STAKED_BALANCE5=$(cleos get table eparticlectr eptestuserse stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
OLD_STAKED_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
OLD_STAKED_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')

# Win
echo -e "${CYAN}-----------------------SETTING WINNING VOTES-----------------------${NC}"
cleos push action eparticlectr vote "[ \"eptestusersb\", $PROPID1, 1, 50, \"vote comment\", \"votememo\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersc\", $PROPID1, 1, 100,\"vote comment\",  \"votememo\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersd\", $PROPID1, 0, 50, \"vote comment\", \"votememo\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestuserse\", $PROPID1, 1, 500,\"vote comment\",  \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersf\", $PROPID1, 0, 350,\"vote comment\",  \"votememo\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersg\", $PROPID1, 0, 80, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Lose
echo -e "${CYAN}-----------------------SETTING LOSING VOTES-----------------------${NC}"
cleos push action eparticlectr vote "[ \"eptestusersb\", $PROPID2, 1, 5, \"vote comment\", \"votememo\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersc\", $PROPID2, 0, 100, \"vote comment\", \"votememo\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersd\", $PROPID2, 1, 500, \"vote comment\", \"votememo\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestuserse\", $PROPID2, 0, 500, \"vote comment\", \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersf\", $PROPID2, 1, 35, \"vote comment\", \"votememo\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersg\", $PROPID2, 0, 800, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Tie (net votes dont't sum to 0 because proposer auto-votes 50 in favor)
echo -e "${CYAN}-----------------------SETTING TIE VOTES-----------------------${NC}"
cleos push action eparticlectr vote "[ \"eptestusersb\", $PROPID3, 1, 15, \"vote comment\", \"votememo\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersc\", $PROPID3, 0, 150,\"vote comment\", \"votememo\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersd\", $PROPID3, 1, 490,\"vote comment\", \"votememo\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestuserse\", $PROPID3, 0, 500,\"vote comment\", \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersf\", $PROPID3, 1, 35, \"vote comment\", \"votememo\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersg\", $PROPID3, 1, 60, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Unanimous win
echo -e "${CYAN}-----------------------UNANIMOUS VOTES-----------------------${NC}"
cleos push action eparticlectr vote "[ \"eptestusersb\", $PROPID4, 1, 5, \"vote comment\", \"votememo\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersc\", $PROPID4, 1, 10,\"vote comment\", \"votememo\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersd\", $PROPID4, 1, 50,\"vote comment\", \"votememo\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestuserse\", $PROPID4, 1, 50,\"vote comment\", \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersf\", $PROPID4, 1, 35,\"vote comment\", \"votememo\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr vote "[ \"eptestusersg\", $PROPID4, 1, 60,\"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

# User votes against himself
echo -e "${CYAN}-----------------------USER VOTES AGAINST HIMSELF-----------------------${NC}"
cleos push action eparticlectr vote "[ \"eptestuserse\", $PROPID5, 0, 60, \"vote comment\", \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")

# Bad votes
echo -e "${CYAN}-----------------------NEXT TWO VOTE ATTEMPTS SHOULD FAIL-----------------------${NC}"
cleos push action eparticlectr vote "[ \"eptestusersg\", $PROPID4, 1, 500000000, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 1")
cleos push action eparticlectr vote "[ \"eptestusersc\", $PROPID4, 1, 500, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 1")

# Post-vote balances
echo -e "${CYAN}-----------------------VERIFY BALANCES ARE PROPERLY ADJUSTED-----------------------${NC}"
NEW_AVAILABLE_BALANCE2=$(cleos get table eparticlectr eptestusersb stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_AVAILABLE_BALANCE3=$(cleos get table eparticlectr eptestusersc stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_AVAILABLE_BALANCE4=$(cleos get table eparticlectr eptestusersd stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_AVAILABLE_BALANCE5=$(cleos get table eparticlectr eptestuserse stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_AVAILABLE_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_AVAILABLE_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')

NEW_STAKED_BALANCE2=$(cleos get table eparticlectr eptestusersb stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
NEW_STAKED_BALANCE3=$(cleos get table eparticlectr eptestusersc stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
NEW_STAKED_BALANCE4=$(cleos get table eparticlectr eptestusersd stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
NEW_STAKED_BALANCE5=$(cleos get table eparticlectr eptestuserse stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
NEW_STAKED_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
NEW_STAKED_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')

assert $(bc <<< "$OLD_AVAILABLE_BALANCE2 - $NEW_AVAILABLE_BALANCE2 == 75.000")
assert $(bc <<< "$OLD_AVAILABLE_BALANCE3 - $NEW_AVAILABLE_BALANCE3 == 360.000")
assert $(bc <<< "$OLD_AVAILABLE_BALANCE4 - $NEW_AVAILABLE_BALANCE4 == 1090.000")
assert $(bc <<< "$OLD_AVAILABLE_BALANCE5 - $NEW_AVAILABLE_BALANCE5 == 1610.000")
assert $(bc <<< "$OLD_AVAILABLE_BALANCE6 - $NEW_AVAILABLE_BALANCE6 == 455.000")
assert $(bc <<< "$OLD_AVAILABLE_BALANCE7 - $NEW_AVAILABLE_BALANCE7 == 1000.000")

assert $(bc <<< "$NEW_STAKED_BALANCE2 - $OLD_STAKED_BALANCE2 == 75.000")
assert $(bc <<< "$NEW_STAKED_BALANCE3 - $OLD_STAKED_BALANCE3 == 360.000")
assert $(bc <<< "$NEW_STAKED_BALANCE4 - $OLD_STAKED_BALANCE4 == 1090.000")
assert $(bc <<< "$NEW_STAKED_BALANCE5 - $OLD_STAKED_BALANCE5 == 1610.000")
assert $(bc <<< "$NEW_STAKED_BALANCE6 - $OLD_STAKED_BALANCE6 == 455.000")
assert $(bc <<< "$NEW_STAKED_BALANCE7 - $OLD_STAKED_BALANCE7 == 1000.000")

echo "All balances are properly accounted"


# Finalize
echo -e "${CYAN}-----------------------EARLY FINALIZE SHOULD FAIL-----------------------${NC}"
cleos push action eparticlectr finalize "[ $PROPID4 ]" -p eptestuserse
assert $(bc <<< "$? == 1")

echo -e "${CYAN}WAITING FOR VOTING PERIOD TO END...${NC}"
sleep 4 # wait for test voting period to end

# Bad vote
echo -e "${CYAN}-----------------------LATE VOTE SHOULD FAIL-----------------------${NC}"
cleos push action eparticlectr vote "[ \"eptestusersc\", $PROPID4, 1, 500, \"votecomment\", \"votememo\" ]" -p eptestusersc
assert $(bc <<< "$? == 1")

echo -e "${CYAN}-----------------------FINALIZES-----------------------${NC}"
cleos push action eparticlectr finalize "[ $PROPID1 ]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr finalize "[ $PROPID2 ]" -p eptestusersg
assert $(bc <<< "$? == 0")
cleos push action eparticlectr finalize "[ $PROPID3 ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr finalize "[ $PROPID4 ]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr finalize "[ $PROPID5 ]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr finalize "[ $PROPID6 ]" -p eptestusersc
assert $(bc <<< "$? == 0")

echo -e "${CYAN}-----------------------FINALIZE FAIL (ALREADY FINALIZED)-----------------------${NC}"
cleos push action --force-unique eparticlectr finalize "[ $PROPID3 ]" -p eptestuserse
assert $(bc <<< "$? == 1")

echo -e "${CYAN}-----------------------EARLY REWARD CLAIM FAIL-----------------------${NC}"
REWARD_ID1=$(cleos get table eparticlectr eparticlectr rewardstbl2 -r | jq ".rows[0].id")
cleos push action eparticlectr rewardclmid "[$REWARD_ID1]" -p eptestuserse
assert $(bc <<< "$? == 1")

# Slash checks
echo -e "${CYAN}-----------------------TODO: TEST SLASHES-----------------------${NC}"

echo -e "${CYAN}WAITING FOR REWARDS PERIOD TO END...${NC}"
sleep 5

CURATION_REWARD_SUM=$(cleos get table eparticlectr eparticlectr perrwdstbl2 -r | jq ".rows[0].curation_sum")
EDITOR_REWARD_SUM=$(cleos get table eparticlectr eparticlectr perrwdstbl2 -r | jq ".rows[0].editor_sum")

echo -e "   ${CYAN}CURATION REWARD SUM: ${CURATION_REWARD_SUM}${NC}"
echo -e "   ${CYAN}EDITOR REWARD SUM: ${EDITOR_REWARD_SUM}${NC}"

assert $(bc <<< "$CURATION_REWARD_SUM == 2470")
assert $(bc <<< "$EDITOR_REWARD_SUM == 530")

# Claim rewards
OLD_BALANCE4=$(cleos get table eparticlectr eptestusersd stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_BALANCE5=$(cleos get table eparticlectr eptestuserse stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')

OLD_SHARES4=$(cleos get table eparticlectr eptestusersd accounts | jq '.rows[] | select(.guild == "eptestusersd") | .shares')
OLD_SHARES5=$(cleos get table eparticlectr eptestuserse accounts | jq '.rows[] | select(.guild == "eptestuserse") | .shares')
OLD_SHARES6=$(cleos get table eparticlectr eptestusersf accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
OLD_SHARES7=$(cleos get table eparticlectr eptestusersg accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')

REWARD_ID2=$(bc <<< "$REWARD_ID1 - 2")
REWARD_ID3=$(bc <<< "$REWARD_ID1 - 3")
REWARD_ID4=$(bc <<< "$REWARD_ID1 - 4")
REWARD_ID5=$(bc <<< "$REWARD_ID1 - 8") # this one has edit points

echo -e "${CYAN}-----------------------CLAIM REWARDS-----------------------${NC}"
cleos push action eparticlectr rewardclmid "[$REWARD_ID1]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[$REWARD_ID2]" -p eptestusersg
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[$REWARD_ID3]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[$REWARD_ID4]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[$REWARD_ID5]" -p eptestusersd
assert $(bc <<< "$? == 0")

NEW_BALANCE4=$(cleos get table eparticlectr eptestusersd stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_BALANCE5=$(cleos get table eparticlectr eptestuserse stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')

NEW_SHARES4=$(cleos get table eparticlectr eptestusersd accounts | jq '.rows[] | select(.guild == "eptestusersd") | .shares')
NEW_SHARES5=$(cleos get table eparticlectr eptestuserse accounts | jq '.rows[] | select(.guild == "eptestuserse") | .shares')
NEW_SHARES6=$(cleos get table eparticlectr eptestusersf accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES7=$(cleos get table eparticlectr eptestusersg accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')

DIFF4=$(bc <<< "$NEW_BALANCE4 - $OLD_BALANCE4")
DIFF5=$(bc <<< "$NEW_BALANCE5 - $OLD_BALANCE5")
DIFF6=$(bc <<< "$NEW_BALANCE6 - $OLD_BALANCE6")
DIFF7=$(bc <<< "$NEW_BALANCE7 - $OLD_BALANCE7")

echo -e "${CYAN}REWARDS:${NC}"
echo -e "${CYAN}    eptestusersd: $DIFF4${NC}"
echo -e "${CYAN}    eptestuserse: $DIFF5${NC}"
echo -e "${CYAN}    eptestusersf: $DIFF6${NC}"
echo -e "${CYAN}    eptestusersg: $DIFF7${NC}"

# Assert rewards were distributed to guilds
assert $(bc <<< "$DIFF4 == 198.250")
assert $(bc <<< "$DIFF5 == 2.024")
assert $(bc <<< "$DIFF6 == 41.176")
assert $(bc <<< "$DIFF7 == 2.429")

# Assert shares were awarded to guild owners
assert $(bc <<< "$NEW_SHARES4 > $OLD_SHARES4")
assert $(bc <<< "$NEW_SHARES5 > $OLD_SHARES5")
assert $(bc <<< "$NEW_SHARES6 > $OLD_SHARES6")
assert $(bc <<< "$NEW_SHARES7 > $OLD_SHARES7")

echo -e "${CYAN}-----------------------NEXT TWO CLAIMS SHOULD FAIL-----------------------${NC}"
cleos push action --force-unique eparticlectr rewardclmid "[\"$REWARD_ID3\"]" -p eptestusersf
assert $(bc <<< "$? != 0")
cleos push action --force-unique eparticlectr rewardclmid "[3249293423]" -p eptestusersf
assert $(bc <<< "$? != 0")

echo -e "${CYAN}-----------------------VOTE PURGES BELOW SHOULD PASS-----------------------${NC}"
cleos push action eparticlectr oldvotepurge "[$PROPID1, 100]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr oldvotepurge "[$PROPID2, 100]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr oldvotepurge "[$PROPID3, 2]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr oldvotepurge "[$PROPID4, 5]" -p eptestusersa
assert $(bc <<< "$? == 0")

echo -e "${CYAN}-----------------------NEXT THREE VOTE PURGES SHOULD FAIL-----------------------${NC}"
cleos push action eparticlectr oldvotepurge "[\"$IPFS1\", 100]" -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action eparticlectr oldvotepurge '["gumdrop", 100]' -p eptestusersa
assert $(bc <<< "$? == 1")
# Cannot delete newest proposal
cleos push action eparticlectr oldvotepurge "[$PROPID6, 100]" -p eptestusersa
assert $(bc <<< "$? == 1")

echo -e "${CYAN}-----------------------WINNING EDIT STAKES SHOULD CHANGE COMPLETION TIME-----------------------${NC}"
STAKE28=$(cleos get table eparticlectr eparticlectr staketbl2 -r -l 28 | jq ".rows[27]")
TIMESTAMP=$(echo $STAKE28 | jq ".timestamp")
COMPLETION_TIME=$(echo $STAKE28 | jq ".completion_time")
assert $(bc <<< "$COMPLETION_TIME - $TIMESTAMP != 5")
echo "Stake time changed properly"

echo -e "${CYAN}-----------------------BELOW CLAIMS SHOULD PASS-----------------------${NC}"
STAKE_ID1=$(cleos get table eparticlectr eparticlectr staketbl2 -r | jq ".rows[0].id")
STAKE_ID2=$(bc <<< "$STAKE_ID1 - 1")
STAKE_ID3=$(bc <<< "$STAKE_ID1 - 2")
STAKE_ID4=$(bc <<< "$STAKE_ID1 - 3")

cleos push action eparticlectr brainclmid "[$STAKE_ID1]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr brainclmid "[$STAKE_ID2]" -p eptestusersg
assert $(bc <<< "$? == 0")
cleos push action eparticlectr brainclmid "[$STAKE_ID3]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr brainclmid "[$STAKE_ID4]" -p eptestuserse
assert $(bc <<< "$? == 0")

echo -e "${CYAN}-----------------------THIS CLAIM SHOULD FAIL-----------------------${NC}"
cleos push action eparticlectr brainclmid "[$STAKE_ID1]" -p eptestusersf
assert $(bc <<< "$? == 1")

echo -e "${CYAN}-----------------------WITHDRAWALS-----------------------${NC}"
OLD_BALANCE1=$(cleos get table everipediaiq eptestusersa accounts | jq ".rows[0].balance" | tr -d '"' | awk '{ print $1 }')
OLD_BALANCE4=$(cleos get table everipediaiq eptestusersd accounts | jq ".rows[0].balance" | tr -d '"' | awk '{ print $1 }')

OLD_AVAILABLE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
OLD_AVAILABLE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')

STAKED_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
STAKED_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].staked" | tr -d '"' | awk '{ print $1 }')
TOTAL_SHARES6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].total_shares")
TOTAL_SHARES7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].total_shares")
SHARE_PRICE6=$(bc <<< "scale=3;($OLD_AVAILABLE6 + $STAKED_BALANCE6) / $TOTAL_SHARES6") 
SHARE_PRICE7=$(bc <<< "scale=3;($OLD_AVAILABLE7 + $STAKED_BALANCE7) / $TOTAL_SHARES7")

OLD_SHARES1=$(cleos get table eparticlectr eptestusersa accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
OLD_SHARES4=$(cleos get table eparticlectr eptestusersd accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')

EXPECTED_IQ1=$(bc <<< "scale=3;200 * $SHARE_PRICE6")
EXPECTED_IQ2=$(bc <<< "scale=3;500 * $SHARE_PRICE7")

cleos push action eparticlectr withdraw '["eptestusersa", "eptestusersf", 100, "eptestusersa"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr withdraw '["eptestusersa", "eptestusersf", 100, "eptestusersf"]' -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr withdraw '["eptestusersd", "eptestusersg", 500, "eptestusersd"]' -p eptestusersd
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(cleos get table everipediaiq eptestusersa accounts | jq ".rows[0].balance" | tr -d '"' | awk '{ print $1 }')
NEW_BALANCE4=$(cleos get table everipediaiq eptestusersd accounts | jq ".rows[0].balance" | tr -d '"' | awk '{ print $1 }')

NEW_SHARES1=$(cleos get table eparticlectr eptestusersa accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES2=$(cleos get table eparticlectr eptestusersb accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES3=$(cleos get table eparticlectr eptestusersc accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES4=$(cleos get table eparticlectr eptestusersd accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')
NEW_SHARES5=$(cleos get table eparticlectr eptestuserse accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')
NEW_SHARES6=$(cleos get table eparticlectr eptestusersf accounts | jq '.rows[] | select(.guild == "eptestusersf") | .shares')
NEW_SHARES7=$(cleos get table eparticlectr eptestusersg accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')

NEW_BALANCE6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')
NEW_BALANCE7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].available" | tr -d '"' | awk '{ print $1 }')

TOTAL_SHARES6=$(cleos get table eparticlectr eptestusersf stats | jq ".rows[0].total_shares")
TOTAL_SHARES7=$(cleos get table eparticlectr eptestusersg stats | jq ".rows[0].total_shares")

SUM_SHARES6=$(bc <<< "$NEW_SHARES1 + $NEW_SHARES2 + $NEW_SHARES3 + $NEW_SHARES6")
SUM_SHARES7=$(bc <<< "$NEW_SHARES4 + $NEW_SHARES5 + $NEW_SHARES7")

assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == $EXPECTED_IQ1")
assert $(bc <<< "$NEW_BALANCE4 - $OLD_BALANCE4 == $EXPECTED_IQ2")
assert $(bc <<< "$OLD_SHARES1 - $NEW_SHARES1 == 200")
assert $(bc <<< "$OLD_SHARES4 - $NEW_SHARES4 == 500")
assert $(bc <<< "$SUM_SHARES6 == $TOTAL_SHARES6")
assert $(bc <<< "$SUM_SHARES7 == $TOTAL_SHARES7")

# Boot user
echo -e "${CYAN}-----------------------BOOT USER-----------------------${NC}"
cleos push action eparticlectr withdraw "[\"eptestusersd\", \"eptestusersg\", $NEW_SHARES4, \"eptestusersg\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

BOOTED_SHARES=$(cleos get table eparticlectr eptestusersd accounts | jq '.rows[] | select(.guild == "eptestusersg") | .shares')
if [ -n "$BOOTED_ACCOUNT" ]; then assert 0; fi

echo -e "${CYAN}-----------------------FAILED WITHDRAWALS-----------------------${NC}"
cleos push action eparticlectr withdraw '["eptestusersg", "eptestusersf", 1000, "eptestusersa"]' -p eptestusersg
assert $(bc <<< "$? == 1")
cleos push action eparticlectr withdraw '["eptestusersa", "eptestusersf", 1000, "eptestuserse"]' -p eptestuserse
assert $(bc <<< "$? == 1")


echo -e "${CYAN}-----------------------MAKE MORE PROPOSALS THEN PURGE THE PREVIOUS ONE-----------------------${NC}"
cleos push action eparticlectr propose2 "[ \"eptestusersa\", \"$SLUG8\", \"$IPFS4\", \"en\", -1, \"new wiki\", \"memoing\"]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose2 "[ \"eptestusersa\", \"$SLUG8\", \"$IPFS5\", \"en\", -1, \"new wiki\", \"memoing\"]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr oldvotepurge "[$PROPID6, 100]" -p eptestusersa
assert $(bc <<< "$? == 0")

echo -e "${CYAN}-----------------------MARK REFERENDUMS-----------------------${NC}"
LAST_PROP_ID=$(cleos get table eparticlectr eparticlectr propstbl2 -r | jq ".rows[0].id")
cleos push action eparticlectr mkreferendum "[$LAST_PROP_ID]" -p eptestusersa
assert $(bc <<< "$? == 0")
REFERENDUM_END=$(cleos get table eparticlectr eparticlectr propstbl2 -r | jq ".rows[0].endtime")
NOW=$(date +%s)
assert $(bc <<< "$REFERENDUM_END > $NOW + 13*86400") # Referendum ends more than 13 days from now

echo -e "${CYAN}-----------------------FAILED REFERENDUMS-----------------------${NC}"
# Duplicate marking
cleos push action --force-unique eparticlectr mkreferendum "[$LAST_PROP_ID]" -p eptestusersa
assert $(bc <<< "$? == 1")
BAD_PROP_ID=$(bc <<< "$LAST_PROP_ID - 1")
# Invalid user marking
cleos push action eparticlectr mkreferendum "[$BAD_PROP_ID]" -p eptestusersb
assert $(bc <<< "$? == 1")

echo -e "${CYAN}-----------------------COMPLETE-----------------------${NC}"
