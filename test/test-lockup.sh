#!/bin/bash
# use bash ./test.sh, NOT sh ./test.sh

CYAN='\033[1;36m'
NC='\033[0m'

YELLOW='\033[1;33m'
NY='\033[0m'

trap ctrl_c INT
ctrl_c () {
    exit 11;
}

BUILD=1 # KEEP AT 1!. Rebuild everipedia contracts, changing the variables for the test
BOOTSTRAP=0 # 1 if chain bootstrapping (bios, system contract, etc.) is needed, else 0
RECOMPILE_AND_RESET_EOSIO_CONTRACTS=0
TRY_CLEANOUT=0

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

CURR_TIMESTAMP=$(date -u '+%s');
# Build
if [ $BUILD -eq 1 ]; then
    sed -i -e "s/LOCKUP_TOTAL = asset(1574983354/LOCKUP_TOTAL = asset(1000/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/CUSTODIAN_ACCOUNT = name(\"binancestake\")/CUSTODIAN_ACCOUNT = name(\"eptestusersb\")/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/EP_ACCOUNT = name(\"ytehekdmilty\")/EP_ACCOUNT = name(\"eptestusersa\")/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/CLIFF_DELAY = 15897600/CLIFF_DELAY = 10/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/TRANCHE_PERIOD = 7776000/TRANCHE_PERIOD = 5/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/TOTAL_TRANCHES = 8/TOTAL_TRANCHES = 3/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/START_DATE = 1588550400/START_DATE = $CURR_TIMESTAMP/g" ../iqlockupctcr/iqlockupctcr.hpp
    cd ..
    echo "Deleting old iqlockupctcr files..."
    cd iqlockupctcr
    rm -rf iqlockupctcr.abi iqlockupctcr.wasm iqlockupctcr.wast
    echo "Building iqlockupctcr..."
    eosio-cpp iqlockupctcr.cpp -O=3 -lto-opt=O3 -stack-size=16384 -abigen -o iqlockupctcr.wasm -I iqlockupctcr.clauses.md -I iqlockupctcr.contracts.md
    cd ..
    cd test
    sed -i -e "s/LOCKUP_TOTAL = asset(1000/LOCKUP_TOTAL = asset(1574983354/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/CUSTODIAN_ACCOUNT = name(\"eptestusersb\")/CUSTODIAN_ACCOUNT = name(\"binancestake\")/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/EP_ACCOUNT = name(\"eptestusersa\")/EP_ACCOUNT = name(\"ytehekdmilty\")/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/CLIFF_DELAY = 10/CLIFF_DELAY = 15897600/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/TRANCHE_PERIOD = 5/TRANCHE_PERIOD = 7776000/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e "s/TOTAL_TRANCHES = 3/TOTAL_TRANCHES = 8/g" ../iqlockupctcr/iqlockupctcr.hpp
    sed -i -e  "s/START_DATE = $CURR_TIMESTAMP/START_DATE = 1588550400/g" ../iqlockupctcr/iqlockupctcr.hpp
fi

if [ $BOOTSTRAP -eq 1 ]; then
    bash bootstrap.sh
fi


# echo -e "${CYAN}-----------------------DEPLOYING LOCKUP CONTRACT AGAIN-----------------------${NC}"
# cleos set account permission everipediaiq active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"eparticlectr","permission":"eosio.code" }, "weight":1 }, { "permission": { "actor":"everipediaiq","permission":"eosio.code" }, "weight":1 }] }' owner -p everipediaiq

## Deploy contracts
echo -e "${CYAN}-----------------------DEPLOYING LOCKUP CONTRACT AGAIN-----------------------${NC}"
cleos set contract iqlockupctcr ../iqlockupctcr/

OLD_BALANCE1=$(balance eptestusersa)

# Test IQ transfers
echo -e "${CYAN}-----------------------SEED THE ACCOUNT WITH TOKENS -----------------------${NC}"
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersa", "100000.000 IQ", "test"]' -p everipediaiq
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 100000")

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

assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == -1000")

echo -e "${CYAN}Wait 1 second...${NC}"
sleep 1



if [ $TRY_CLEANOUT -eq 0 ]; then
    # Try to get a tranche before the cliff (should fail)
    echo -e "${CYAN}-----------------------TRY TO GET A TRANCHE BEFORE THE CLIFF (SHOULD FAIL)-----------------------${NC}"
    cleos push action iqlockupctcr gettranches '[]' -p eptestusersa
    assert $(bc <<< "$? == 1")

    echo -e "${CYAN}Wait 5 seconds...${NC}"
    sleep 5

    # Mark the old balance
    OLD_BALANCE1=$(balance eptestusersa)

    # Try to get the first tranche
    echo -e "${CYAN}-----------------------GET THE FIRST TRANCHE-----------------------${NC}"
    cleos push action iqlockupctcr gettranches '[]' -p eptestusersa
    assert $(bc <<< "$? == 0")

    NEW_BALANCE1=$(balance eptestusersa)
    assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 333.333")

    echo -e "${CYAN}-----------------------TRY TO GET ANOTHER TRANCHE PREMATURELY (SHOULD FAIL)-----------------------${NC}"
    cleos push action iqlockupctcr gettranches '[]' -p eptestusersa
    assert $(bc <<< "$? == 1")

    echo -e "${CYAN}Wait 5 seconds for the next tranche...${NC}"
    sleep 5

    # Mark the old balance
    OLD_BALANCE1=$(balance eptestusersa)

    # Try to get the second tranche
    echo -e "${CYAN}-----------------------GET THE SECOND TRANCHE-----------------------${NC}"
    cleos push action iqlockupctcr gettranches '[]' -p eptestusersa
    assert $(bc <<< "$? == 0")

    NEW_BALANCE1=$(balance eptestusersa)
    assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 333.333")

    echo -e "${CYAN}Wait 5 seconds for the last tranche...${NC}"
    sleep 5

    # Mark the old balance
    OLD_BALANCE1=$(balance eptestusersa)

    # Try to get the third tranche
    echo -e "${CYAN}-----------------------GET THE THIRD TRANCHE-----------------------${NC}"
    cleos push action iqlockupctcr gettranches '[]' -p eptestusersa
    assert $(bc <<< "$? == 0")

    NEW_BALANCE1=$(balance eptestusersa)
    assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 333.333")

    echo -e "${CYAN}-----------------------TRY TO GET ANOTHER TRANCHE (SHOULD FAIL)-----------------------${NC}"
    cleos push action iqlockupctcr gettranches '[]' -p eptestusersa
    assert $(bc <<< "$? == 1")

    echo -e "${CYAN}Wait 5 seconds just to make sure...${NC}"
    sleep 5

    echo -e "${CYAN}-----------------------TRY TO GET ANOTHER TRANCHE AGAIN (SHOULD FAIL)-----------------------${NC}"
    cleos push action iqlockupctcr gettranches '[]' -p eptestusersa
    assert $(bc <<< "$? == 1")
else
    # Mark the old balance of the soon-to-be cleanout recipient
    OLD_BALANCE1=$(balance eptestusersa)

    PROPOSAL_NAME=$(accountgen)

    # Try to out the remaining balance
    echo -e "${CYAN}-----------------------SETTING THE CLEANOUT PROPOSAL-----------------------${NC}"
    cleos multisig propose $PROPOSAL_NAME '[{"actor": "eptestusersa", "permission": "active"}, {"actor": "eptestusersb", "permission": "active"}]' '[{"actor": "eptestusersa", "permission": "active"}, {"actor": "eptestusersb", "permission": "active"}]' iqlockupctcr cleanout '{}' -p eptestusersa
    assert $(bc <<< "$? == 0")

    echo -e "${CYAN}-----------------------REVIEWING CLEANOUT PROPOSAL-----------------------${NC}"
    cleos multisig review eptestusersa $PROPOSAL_NAME
    assert $(bc <<< "$? == 0")

    echo -e "${CYAN}-----------------------ACCEPTING CLEANOUT PROPOSAL-----------------------${NC}"
    cleos multisig approve eptestusersa $PROPOSAL_NAME '{"actor": "eptestusersa", "permission": "active"}' -p eptestusersa
    assert $(bc <<< "$? == 0")

    cleos multisig approve eptestusersa $PROPOSAL_NAME '{"actor": "eptestusersb", "permission": "active"}' -p eptestusersb
    assert $(bc <<< "$? == 0")

    echo -e "${CYAN}-----------------------EXECUTING CLEANOUT PROPOSAL-----------------------${NC}"
    cleos multisig exec eptestusersa $PROPOSAL_NAME -p eptestusersa
    assert $(bc <<< "$? == 0")

    NEW_BALANCE1=$(balance eptestusersa)
    echo $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1")
    assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 1000")
fi




echo -e "${CYAN}-----------------------COMPLETE-----------------------${NC}"
if [ $TRY_CLEANOUT -eq 0 ]; then
    echo -e "${YELLOW}DO NOT FORGET TO TRY THE CLEANOUT ROUTE! SET TRY_CLEANOUT TO 1${NY}"
fi