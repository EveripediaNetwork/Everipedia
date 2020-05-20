#!/bin/bash
# use bash ./test.sh, NOT sh ./test.sh

CYAN='\033[1;36m'
NC='\033[0m'

trap ctrl_c INT
ctrl_c () {
    exit 11;
}

BUILD=1 # KEEP AT 1!. Rebuild everipedia contracts, changing the variables for the test
BOOTSTRAP=0 # 1 if chain bootstrapping (bios, system contract, etc.) is needed, else 0
RECOMPILE_AND_RESET_EOSIO_CONTRACTS=0

HELP=0
# EOSIO_CONTRACTS_ROOT=/home/kedar/eosio.contracts/build/contracts/
EOSIO_CONTRACTS_ROOT="/home/${USER}/Programs/contracts/eosio.contracts/build/contracts"
NODEOS_HOST="127.0.0.1"
NODEOS_PROTOCOL="http"
NODEOS_PORT="8888"
NODEOS_LOCATION="${NODEOS_PROTOCOL}://${NODEOS_HOST}:${NODEOS_PORT}"

alias cleos="cleos --url=${NODEOS_LOCATION}"

#######################################
## HELPERS

balance () {
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

CURR_TIMESTAMP=$(date '+%s');

# Build
if [ $BUILD -eq 1 ]; then
    sed -i -e 's/LOCKUP_TOTAL = asset(157498335497/LOCKUP_TOTAL = asset(1000/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/CUSTODIAN_ACCOUNT = name(\"123abcabc321\")/CUSTODIAN_ACCOUNT = name(\"eptestusersb\")/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/EP_ACCOUNT = name(\"ytehekdmilty\")/EP_ACCOUNT = name(\"eptestusersa\")/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/CLIFF_DELAY = 15897600/CLIFF_DELAY = 5/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/TRANCHE_PERIOD = 7776000/TRANCHE_PERIOD = 3/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/TOTAL_TRANCHES = 8/TOTAL_TRANCHES = 3/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/START_DATE = 1588550400/START_DATE = ${CURR_TIMESTAMP}/g' ../iqlockupctcr/iqlockupctcr.hpp
    cd ..
    bash build.sh
    cd test
    sed -i -e 's/LOCKUP_TOTAL = asset(1000/LOCKUP_TOTAL = asset(157498335497/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/CUSTODIAN_ACCOUNT = name(\"eptestusersb\")/CUSTODIAN_ACCOUNT = name(\"123abcabc321\")/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/EP_ACCOUNT = name(\"eptestusersa\")/EP_ACCOUNT = name(\"ytehekdmilty\")/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/CLIFF_DELAY = 5/CLIFF_DELAY = 15897600/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/TRANCHE_PERIOD = 3/TRANCHE_PERIOD = 7776000/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/TOTAL_TRANCHES = 3/TOTAL_TRANCHES = 8/g' ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e 's/START_DATE = ${CURR_TIMESTAMP}/START_DATE = 1588550400/g' ../iqlockupctcr/iqlockupctcr.hpp
fi

if [ $BOOTSTRAP -eq 1 ]; then
    bash bootstrap.sh
fi

exit 0

## Deploy contracts
echo -e "${CYAN}-----------------------DEPLOYING LOCKUP CONTRACT AGAIN-----------------------${NC}"
cleos set contract iqlockupctcr ../iqlockupctcr/

# No transfer fees for privileged accounts
OLD_BALANCE1=$(balance eptestusersa)

# Test IQ transfers
echo -e "${CYAN}-----------------------DEPOSITING TOKENS -----------------------${NC}"
cleos push action iqlockupctcr deposit '["1.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action iqlockupctcr deposit '["99.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action iqlockupctcr deposit '["900.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)

assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 1000")

# Failed deposit (should fail)
echo -e "${CYAN}-----------------------TRY TO DEPOSIT TOO MUCH (SHOULD FAIL)-----------------------${NC}"
cleos push action iqlockupctcr transfer '["eptestusersa", "eptestusersb", "100.000 IQ", "test"]' -p eptestusersa
assert $(bc <<< "$? == 1")

echo -e "${CYAN}Wait 2 seconds...${NC}"
sleep 2

# Try to get a tranche before the cliff (should fail)
echo -e "${CYAN}-----------------------TRY TO GET A TRANCHE BEFORE THE CLIFF (SHOULD FAIL)-----------------------${NC}"
cleos push action iqlockupctcr gettranches -p eptestusersa
assert $(bc <<< "$? == 1")

echo -e "${CYAN}Wait 3 seconds...${NC}"
sleep 3

# Mark the old balance
OLD_BALANCE1=$(balance eptestusersa)

# Try to get the first tranche
echo -e "${CYAN}-----------------------GET THE FIRST TRANCHE-----------------------${NC}"
cleos push action iqlockupctcr gettranches -p eptestusersa
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 333.333")

echo -e "${CYAN}-----------------------TRY TO GET ANOTHER TRANCHE PREMATURELY (SHOULD FAIL)-----------------------${NC}"
cleos push action iqlockupctcr gettranches -p eptestusersa
assert $(bc <<< "$? == 1")

echo -e "${CYAN}Wait 3 seconds for the next tranche...${NC}"
sleep 3

# Mark the old balance
OLD_BALANCE1=$(balance eptestusersa)

# Try to get the second tranche
echo -e "${CYAN}-----------------------GET THE SECOND TRANCHE-----------------------${NC}"
cleos push action iqlockupctcr gettranches -p eptestusersa
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 333.333")

echo -e "${CYAN}Wait 3 seconds for the last tranche...${NC}"
sleep 3

# Mark the old balance
OLD_BALANCE1=$(balance eptestusersa)

# Try to get the third tranche
echo -e "${CYAN}-----------------------GET THE THIRD TRANCHE-----------------------${NC}"
cleos push action iqlockupctcr gettranches -p eptestusersa
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 333.333")

echo -e "${CYAN}-----------------------TRY TO GET ANOTHER TRANCHE (SHOULD FAIL)-----------------------${NC}"
cleos push action iqlockupctcr gettranches -p eptestusersa
assert $(bc <<< "$? == 1")

echo -e "${CYAN}Wait 3 seconds just to make sure...${NC}"
sleep 3

echo -e "${CYAN}-----------------------TRY TO GET ANOTHER TRANCHE AGAIN (SHOULD FAIL)-----------------------${NC}"
cleos push action iqlockupctcr gettranches -p eptestusersa
assert $(bc <<< "$? == 1")

echo -e "${CYAN}-----------------------COMPLETE-----------------------${NC}"
