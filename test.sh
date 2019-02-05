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
EOSIO_CONTRACTS_ROOT=/home/kedar/eosio.contracts/build/
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

# Don't allow tests on mainnet
CHAIN_ID=$(cleos get info | jq ".chain_id" | tr -d '"')
if [ $CHAIN_ID = "aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906" ]; then
    >&2 echo -e "Cannot run test on mainnet"
    exit 1
fi

# Build
if [ $BUILD -eq 1 ]; then
    sed -i -e 's/REWARD_INTERVAL = 1800/REWARD_INTERVAL = 5/g' eparticlectr/eparticlectr.hpp
    sed -i -e 's/DEFAULT_VOTING_TIME = 43200/DEFAULT_VOTING_TIME = 3/g' eparticlectr/eparticlectr.hpp
    sed -i -e 's/STAKING_DURATION = 21 \* 86400/STAKING_DURATION = 5/g' eparticlectr/eparticlectr.hpp
    ./build.sh
    sed -i -e 's/REWARD_INTERVAL = 5/REWARD_INTERVAL = 1800/g' eparticlectr/eparticlectr.hpp
    sed -i -e 's/DEFAULT_VOTING_TIME = 3/DEFAULT_VOTING_TIME = 43200/g' eparticlectr/eparticlectr.hpp
    sed -i -e 's/STAKING_DURATION = 5/STAKING_DURATION = 21 \* 86400/g' eparticlectr/eparticlectr.hpp
fi

if [ $BOOTSTRAP -eq 1 ]; then
    # Create BIOS accounts
    rm ~/eosio-wallet/default.wallet
    cleos wallet create --to-console

    # EOSIO system-related keys
    echo -e "${CYAN}-----------------------SYSTEM KEYS-----------------------${NC}"
    cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
    cleos wallet import --private-key 5JgqWJYVBcRhviWZB3TU1tN9ui6bGpQgrXVtYZtTG2d3yXrDtYX
    cleos wallet import --private-key 5JjjgrrdwijEUU2iifKF94yKduoqfAij4SKk6X5Q3HfgHMS4Ur6
    cleos wallet import --private-key 5HxJN9otYmhgCKEbsii5NWhKzVj2fFXu3kzLhuS75upN5isPWNL
    cleos wallet import --private-key 5JNHjmgWoHiG9YuvX2qvdnmToD2UcuqavjRW5Q6uHTDtp3KG3DS
    cleos wallet import --private-key 5JZkaop6wjGe9YY8cbGwitSuZt8CjRmGUeNMPHuxEDpYoVAjCFZ
    cleos wallet import --private-key 5Hroi8WiRg3by7ap3cmnTpUoqbAbHgz3hGnGQNBYFChswPRUt26
    cleos wallet import --private-key 5JbMN6pH5LLRT16HBKDhtFeKZqe7BEtLBpbBk5D7xSZZqngrV8o
    cleos wallet import --private-key 5JUoVWoLLV3Sj7jUKmfE8Qdt7Eo7dUd4PGZ2snZ81xqgnZzGKdC
    cleos wallet import --private-key 5Ju1ree2memrtnq8bdbhNwuowehZwZvEujVUxDhBqmyTYRvctaF

    # Create system accounts
    echo -e "${CYAN}-----------------------SYSTEM ACCOUNTS-----------------------${NC}"
    cleos create account eosio eosio.bpay EOS7gFoz5EB6tM2HxdV9oBjHowtFipigMVtrSZxrJV3X6Ph4jdPg3
    cleos create account eosio eosio.msig EOS6QRncHGrDCPKRzPYSiWZaAw7QchdKCMLWgyjLd1s2v8tiYmb45
    cleos create account eosio eosio.names EOS7ygRX6zD1sx8c55WxiQZLfoitYk2u8aHrzUxu6vfWn9a51iDJt
    cleos create account eosio eosio.ram EOS5tY6zv1vXoqF36gUg5CG7GxWbajnwPtimTnq6h5iptPXwVhnLC
    cleos create account eosio eosio.ramfee EOS6a7idZWj1h4PezYks61sf1RJjQJzrc8s4aUbe3YJ3xkdiXKBhF
    cleos create account eosio eosio.saving EOS8ioLmKrCyy5VyZqMNdimSpPjVF2tKbT5WKhE67vbVPcsRXtj5z
    cleos create account eosio eosio.stake EOS5an8bvYFHZBmiCAzAtVSiEiixbJhLY8Uy5Z7cpf3S9UoqA3bJb
    cleos create account eosio eosio.token EOS7JPVyejkbQHzE9Z4HwewNzGss11GB21NPkwTX2MQFmruYFqGXm
    cleos create account eosio eosio.vpay EOS6szGbnziz224T1JGoUUFu2LynVG72f8D3UVAS25QgwawdH983U

    if [ $RECOMPILE_EOSIO_CONTRACTS -eq 1 ]; then
        # Compile the contracts manually due to an error in the build.sh script in eosio.contracts
        echo -e "${CYAN}-----------------------RECOMPILING CONTRACTS-----------------------${NC}"
        cd "${EOSIO_CONTRACTS_ROOT}/eosio.token"
        eosio-cpp -I ./include -o ./eosio.token.wasm ./src/eosio.token.cpp --abigen
        cd "${EOSIO_CONTRACTS_ROOT}/eosio.msig"
        eosio-cpp -I ./include -o ./eosio.msig.wasm ./src/eosio.msig.cpp --abigen
        cd "${EOSIO_CONTRACTS_ROOT}/eosio.bios"
        eosio-cpp -I ./include -o ./eosio.bios.wasm ./src/eosio.bios.cpp --abigen
        cd "${EOSIO_CONTRACTS_ROOT}/eosio.system"
        eosio-cpp -I ./include -I "${EOSIO_CONTRACTS_ROOT}/eosio.token/include" -o ./eosio.system.wasm ./src/eosio.system.cpp --abigen
        cd "${EOSIO_CONTRACTS_ROOT}/eosio.wrap"
        eosio-cpp -I ./include -o ./eosio.wrap.wasm ./src/eosio.wrap.cpp --abigen
    fi

    # Bootstrap new system contracts
    echo -e "${CYAN}-----------------------SYSTEM CONTRACTS-----------------------${NC}"
    cleos set contract eosio.token $EOSIO_CONTRACTS_ROOT/eosio.token/
    cleos set contract eosio.msig $EOSIO_CONTRACTS_ROOT/eosio.msig/
    cleos push action eosio.token create '[ "eosio", "10000000000.0000 EOS" ]' -p eosio.token
    cleos push action eosio.token create '[ "eosio", "10000000000.0000 SYS" ]' -p eosio.token
    echo -e "      EOS TOKEN CREATED"
    cleos push action eosio.token issue '[ "eosio", "1000000000.0000 EOS", "memo" ]' -p eosio
    cleos push action eosio.token issue '[ "eosio", "1000000000.0000 SYS", "memo" ]' -p eosio
    echo -e "      EOS TOKEN ISSUED"
    cleos set contract eosio $EOSIO_CONTRACTS_ROOT/eosio.bios/
    echo -e "      BIOS SET"
    cleos set contract eosio $EOSIO_CONTRACTS_ROOT/eosio.system/
    echo -e "      SYSTEM SET"
    cleos push action eosio setpriv '["eosio.msig", 1]' -p eosio@active
    cleos push action eosio init '[0, "4,EOS"]' -p eosio@active
    cleos push action eosio init '[0, "4,SYS"]' -p eosio@active

    # Import user keys
    echo -e "${CYAN}-----------------------USER KEYS-----------------------${NC}"
    cleos wallet import --private-key 5JVvgRBGKXSzLYMHgyMFH5AHjDzrMbyEPRdj8J6EVrXJs8adFpK
    cleos wallet import --private-key 5KBhzoszXcrphWPsuyTxoKJTtMMcPhQYwfivXxma8dDeaLG7Hsq
    cleos wallet import --private-key 5J9UYL9VcDfykAB7mcx9nFfRKki5djG9AXGV6DJ8d5XPYDJDyUy
    cleos wallet import --private-key 5HtnwWCbMpR1ATYoXY4xb1E4HAU9mzGvDrawyK5May68cYrJR7r
    cleos wallet import --private-key 5Jjx6z5SJ7WhVU2bgG2si6Y1up1JTXHj7qhC9kKUXPXb1K1Xnj6
    cleos wallet import --private-key 5HyQUNxE9T83RLiS9HdZeJck5WRqNSSzVztZ3JwYvkYPrG8Ca1U
    cleos wallet import --private-key 5KZC9soBHR4AF1kt93pCNfjSLPJN9y51AKR4r4vvPsiPvFdLG3t
    cleos wallet import --private-key 5K9dtgQXBCggrMugEAxsBfcUZ8mmnbDpiZZYt7RvoxwChqiFdS1
    cleos wallet import --private-key 5JU8qQMV3cD4HzA14meGEBWwWxNWAk9QAebSkQotv4wXHkKncNh
    cleos wallet import --private-key 5JU8qQMV3cD4HzA14meGEBWwWxNWAk9QAebSkQotv4wXHkKncNh
    cleos wallet import --private-key 5JJB2Ut8NLJXkADonL8GBH6q8vVZq9BK2zTLTrHh8bURFG2tQia
    cleos wallet import --private-key 5Jr6r8roVHE9NWUX1oag39pBxRwNeD2D6mgeityBbvorge8YA6n

    # Create user accounts
    echo -e "${CYAN}-----------------------USER ACCOUNTS-----------------------${NC}"
    cleos system newaccount eosio everipediaiq EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eparticlectr EOS8dYVzNktdam3Vn31mSXcmbj7J7MzGNudqKb3MLW1wdxWJpEbrw --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio iqsafesendiq EOS7mJctpRnPPDhLHgnQVU3En7rvy3XHxrQPcsCqU8XZBV6tc7tMW --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersa EOS6HfoynFKZ1Msq1bKNwtSTTpEu8NssYMcgsy6nHqhRp3mz7tNkB --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersb EOS68s2PrHPDeGWTKczrNZCn4MDMgoW6SFHuTQhXYUNLT1hAmJei8 --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersc EOS7LpZDPKwWWXgJnNYnX6LCBgNqCEqugW9oUQr7XqcSfz7aSFk8o --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersd EOS6KnJPV1mDuS8pYuLucaWzkwbWjGPeJsfQDpqc7NZ4F7zTQh4Wt --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestuserse EOS76Pcyw1Hd7hW8hkZdUE1DQ3UiRtjmAKQ3muKwidRqmaM8iNtDy --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersf EOS7jnmGEK9i33y3N1aV29AYrFptyJ43L7pATBEuVq4fVXG1hzs3G --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersg EOS7vr4QpGP7ixUSeumeEahHQ99YDE5jiBucf1B2zhuidHzeni1dD --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer

    # Deploy eosio.wrap
    echo -e "${CYAN}-----------------------EOSIO WRAP-----------------------${NC}"
    cleos wallet import --private-key 5J3JRDhf4JNhzzjEZAsQEgtVuqvsPPdZv4Tm6SjMRx1ZqToaray
    cleos system newaccount eosio eosio.wrap EOS7LpGN1Qz5AbCJmsHzhG7sWEGd9mwhTXWmrYXqxhTknY2fvHQ1A --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos push action eosio setpriv '["eosio.wrap", 1]' -p eosio@active
    cleos set contract eosio.wrap $EOSIO_CONTRACTS_ROOT/eosio.wrap/

    # Transfer EOS to testing accounts
    echo -e "${CYAN}-----------------------TRANSFERRING IQ-----------------------${NC}"
    cleos transfer eosio eptestusersa "1000 EOS"
    cleos transfer eosio eptestusersb "1000 EOS"
    cleos transfer eosio eptestusersc "1000 EOS"
    cleos transfer eosio eptestusersd "1000 EOS"
    cleos transfer eosio eptestuserse "1000 EOS"
    cleos transfer eosio eptestusersf "1000 EOS"
    cleos transfer eosio eptestusersg "1000 EOS"

    ## Deploy contracts
    echo -e "${CYAN}-----------------------DEPLOYING EVERIPEDIA CONTRACTS-----------------------${NC}"
    cleos set contract everipediaiq everipediaiq/
    cleos set contract eparticlectr eparticlectr/
    cleos set contract iqsafesendiq iqsafesendiq/
    cleos set account permission everipediaiq active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"eparticlectr","permission":"eosio.code" }, "weight":1 }, { "permission": { "actor":"everipediaiq","permission":"eosio.code" }, "weight":1 }] }' owner -p everipediaiq
    cleos set account permission eparticlectr active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"eparticlectr","permission":"eosio.code" }, "weight":1 }, { "permission": { "actor":"everipediaiq","permission":"eosio.code" }, "weight":1 }] }' owner -p eparticlectr
    cleos set account permission iqsafesendiq active '{ "threshold": 1, "keys": [{ "key": "EOS7mJctpRnPPDhLHgnQVU3En7rvy3XHxrQPcsCqU8XZBV6tc7tMW", "weight": 1 }], "accounts": [{ "permission": { "actor":"iqsafesendiq","permission":"eosio.code" }, "weight":1 }] }' owner -p iqsafesendiq

    # Create and issue token
    echo -e "${CYAN}-----------------------CREATING IQ TOKEN-----------------------${NC}"
    cleos push action everipediaiq create "[\"everipediaiq\", \"100000000000.000 IQ\"]" -p everipediaiq@active
    cleos push action everipediaiq issue "[\"everipediaiq\", \"10000000000.000 IQ\", \"initial supply\"]" -p everipediaiq@active
fi

## Deploy contracts
echo -e "${CYAN}-----------------------DEPLOYING EVERIPEDIA CONTRACTS AGAIN-----------------------${NC}"
cleos set contract everipediaiq everipediaiq/
cleos set contract eparticlectr eparticlectr/
cleos set contract iqsafesendiq iqsafesendiq/

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
echo -e "${CYAN}-----------------------MOVING TOKENS FROM THE CONTRACT TO SOME USERS, UNSAFELY-----------------------${NC}"
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

# Safe transfers
echo -e "${CYAN}-----------------------MOVING TOKENS FROM ONE USER TO THE NEXT, SAFELY-----------------------${NC}"
cleos push action everipediaiq transfer '["eptestusersa", "iqsafesendiq", "1000.000 IQ", "eptestuserse", "test"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "iqsafesendiq", "1000.000 IQ", "eptestusersc", "test"]' -p eptestusersa
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
NEW_BALANCE2=$(balance eptestusersb)
NEW_BALANCE3=$(balance eptestusersc)
NEW_BALANCE4=$(balance eptestusersd)
NEW_BALANCE5=$(balance eptestuserse)
NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)
SAFESEND_BALANCE=$(balance iqsafesendiq)

assert $(bc <<< "$OLD_BALANCE1 - $NEW_BALANCE1 == 8000")
assert $(bc <<< "$NEW_BALANCE2 - $OLD_BALANCE2 == 1000")
assert $(bc <<< "$NEW_BALANCE3 - $OLD_BALANCE3 == 2000")
assert $(bc <<< "$NEW_BALANCE4 - $OLD_BALANCE4 == 1000")
assert $(bc <<< "$NEW_BALANCE5 - $OLD_BALANCE5 == 2000")
assert $(bc <<< "$NEW_BALANCE6 - $OLD_BALANCE6 == 1000")
assert $(bc <<< "$NEW_BALANCE7 - $OLD_BALANCE7 == 1000")
assert $(bc <<< "$SAFESEND_BALANCE == 0")

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

# Buy IQ from DEX
# echo -e "Below should pass"
# cleos push action everipediaiq paytxfee '["everipediaiq", "200000.000 IQ", "test"]' -p everipediaiq
#
# OLD_BALANCE1=$(balance eptestusersa)
# OLD_BALANCE2=$(balance eptestusersb)
# OLD_BALANCE3=$(balance eptestusersc)
#
# echo -e "Current Fee Balance: $OLD_FEE_BALANCE"
# cleos transfer eptestusersa epiqtokenfee "10 EOS"
# assert $(bc <<< "$? == 0")
# cleos transfer eptestusersb epiqtokenfee "1 EOS"
# assert $(bc <<< "$? == 0")
# cleos transfer eptestusersb epiqtokenfee "200 EOS"
# assert $(bc <<< "$? == 0")
#
# NEW_BALANCE1=$(balance eptestusersa)
# NEW_BALANCE2=$(balance eptestusersb)
# NEW_BALANCE3=$(balance eptestusersc)

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

cleos push action everipediaiq epartpropose "[ \"eptestusersa\", -1, \"Jeremy Lin\", \"$IPFS1\", \"en\", -1, \"commenting\", \"memoing\" ]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartpropose "[ \"eptestusersb\", -1, \"Monty Python\", \"$IPFS2\", \"en\", -1, \"commenting\", \"memoing\" ]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartpropose "[ \"eptestusersc\", -1, \"Seedy McDouglas\", \"$IPFS3\", \"en\", -1, \"commenting\", \"memoing\" ]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartpropose "[ \"eptestusersd\", -1, \"Genevieve Le Menage\", \"$IPFS4\", \"en\", -1, \"commenting\", \"memoing\" ]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartpropose "[ \"eptestuserse\", 7, \"Grandpa Rick\", \"$IPFS5\", \"en\", -1, \"commenting\", \"memoing\" ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartpropose "[ \"eptestusersf\", 100038, \"7 Dwarfs of Christmas\", \"$IPFS6\", \"en\", -1, \"commenting\", \"memoing\" ]" -p eptestusersf
assert $(bc <<< "$? == 0")

# Failed proposals
echo -e "${CYAN}-----------------------NEXT FIVE PROPOSALS SHOULD FAIL-----------------------${NC}"
cleos push action everipediaiq epartpropose "[ \"eptestusersf\", -1, \"7 Dwarfs of Christmas have too long a title mate\", \"$IPFS1\", \"en\", -1, \"commenting\", \"memoing\" ]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action everipediaiq epartpropose "[ \"eptestusersf\", 100000000000, \"7 Dwarfs of Christmas\", \"$IPFS1\", \"en\", -1, \"specifying a manual ID over 1e9\", \"memoing\" ]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action everipediaiq epartpropose "[ \"eptestusersf\", -200, \"7 Dwarfs of Christmas\", \"$IPFS1\", \"en\", -1, \"specifying a manual ID below -1\", \"memoing\" ]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action everipediaiq epartpropose "[ \"eptestusersf\", -200, \"7 Dwarfs of Christmas\", \"$IPFS1\", \"zh-Hans 02\", -1, \"too long a lang code\", \"memoing\" ]" -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action everipediaiq epartpropose "[ \"eptestusersf\", -200, \"7 Dwarfs of Christmas\", \"$IPFS2 $IPFS1\", \"zh\", -1, \"too long an IPFS string\", \"memoing\" ]" -p eptestusersf
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

# Win
echo -e "${CYAN}-----------------------SETTING WINNING VOTES-----------------------${NC}"
cleos push action everipediaiq epartvote "[ \"eptestusersb\", $PROPID1, 1, 50, \"vote comment\", \"votememo\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersc\", $PROPID1, 1, 100,\"vote comment\",  \"votememo\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersd\", $PROPID1, 0, 50, \"vote comment\", \"votememo\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestuserse\", $PROPID1, 1, 500,\"vote comment\",  \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersf\", $PROPID1, 0, 350,\"vote comment\",  \"votememo\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersg\", $PROPID1, 0, 80, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Lose
echo -e "${CYAN}-----------------------SETTING LOSING VOTES-----------------------${NC}"
cleos push action everipediaiq epartvote "[ \"eptestusersb\", $PROPID2, 1, 5, \"vote comment\", \"votememo\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersc\", $PROPID2, 0, 100, \"vote comment\", \"votememo\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersd\", $PROPID2, 1, 500, \"vote comment\", \"votememo\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestuserse\", $PROPID2, 0, 500, \"vote comment\", \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersf\", $PROPID2, 1, 35, \"vote comment\", \"votememo\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersg\", $PROPID2, 0, 800, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Tie (net votes dont't sum to 0 because proposer auto-votes 50 in favor)
echo -e "${CYAN}-----------------------SETTING TIE VOTES-----------------------${NC}"
cleos push action everipediaiq epartvote "[ \"eptestusersb\", $PROPID3, 1, 15, \"vote comment\", \"votememo\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersc\", $PROPID3, 0, 150,\"vote comment\", \"votememo\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersd\", $PROPID3, 1, 490,\"vote comment\", \"votememo\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestuserse\", $PROPID3, 0, 500,\"vote comment\", \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersf\", $PROPID3, 1, 35, \"vote comment\", \"votememo\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersg\", $PROPID3, 1, 60, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Unanimous win
echo -e "${CYAN}-----------------------UNANIMOUS VOTES-----------------------${NC}"
cleos push action everipediaiq epartvote "[ \"eptestusersb\", $PROPID4, 1, 5, \"vote comment\", \"votememo\"]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersc\", $PROPID4, 1, 10,\"vote comment\", \"votememo\"]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersd\", $PROPID4, 1, 50,\"vote comment\", \"votememo\"]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestuserse\", $PROPID4, 1, 50,\"vote comment\", \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersf\", $PROPID4, 1, 35,\"vote comment\", \"votememo\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action everipediaiq epartvote "[ \"eptestusersg\", $PROPID4, 1, 60,\"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 0")

# User votes against himself
echo -e "${CYAN}-----------------------USER VOTES AGAINST HIMSELF-----------------------${NC}"
cleos push action everipediaiq epartvote "[ \"eptestuserse\", $PROPID5, 0, 60, \"vote comment\", \"votememo\"]" -p eptestuserse
assert $(bc <<< "$? == 0")

# Bad votes
echo -e "${CYAN}-----------------------NEXT TWO VOTE ATTEMPTS SHOULD FAIL-----------------------${NC}"
cleos push action everipediaiq epartvote "[ \"eptestusersg\", $PROPID4, 1, 500000000, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 1")
cleos push action everipediaiq epartvote "[ \"eptestusersc\", $PROPID4, 1, 500, \"vote comment\", \"votememo\"]" -p eptestusersg
assert $(bc <<< "$? == 1")


# Finalize
echo -e "${CYAN}-----------------------EARLY FINALIZE SHOULD FAIL-----------------------${NC}"
cleos push action eparticlectr finalize "[ $PROPID4 ]" -p eptestuserse
assert $(bc <<< "$? == 1")

echo -e "${CYAN}WAITING FOR VOTING PERIOD TO END...${NC}"
sleep 4 # wait for test voting period to end

# Bad vote
echo -e "${CYAN}-----------------------LATE VOTE SHOULD FAIL-----------------------${NC}"
cleos push action everipediaiq epartvote "[ \"eptestusersc\", $PROPID4, 1, 500, \"votememo\" ]" -p eptestusersc
assert $(bc <<< "$? == 1")

echo -e "${CYAN}-----------------------FINALIZES-----------------------${NC}"
echo $PROPID1
echo $PROPID2
echo $PROPID3
echo $PROPID4
echo $PROPID5
echo $PROPID6
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

echo -e "${CYAN}-----------------------FINALIZE FAIL (ALREADY FINALIZED)-----------------------${NC}"
cleos push action --force-unique eparticlectr finalize "[ $PROPID3 ]" -p eptestuserse
assert $(bc <<< "$? == 1")

# Procrewards
echo -e "${CYAN}-----------------------EARLY PROCREWARDS SHOULD FAIL-----------------------${NC}"

FINALIZE_PERIOD=$(cleos get table eparticlectr eparticlectr rewardstbl2 -r | jq ".rows[0].proposal_finalize_period")
ONE_BACK_PERIOD=$(bc <<< "$FINALIZE_PERIOD - 1")
ONE_FORWARD_PERIOD=$(bc <<< "$FINALIZE_PERIOD + 1")

cleos push action eparticlectr procrewards "[$ONE_FORWARD_PERIOD]" -p eptestusersa
assert $(bc <<< "$? == 1")

# Slash checks
echo -e "${CYAN}-----------------------TODO: TEST SLASHES-----------------------${NC}"

echo -e "${CYAN}WAITING FOR REWARDS PERIOD TO END...${NC}"
sleep 5


echo -e "${CYAN}-----------------------PROCESS REWARDS-----------------------${NC}"
cleos push action eparticlectr procrewards "[$FINALIZE_PERIOD]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr procrewards "[$ONE_BACK_PERIOD]" -p eptestusersa

CURATION_REWARD_SUM=$(cleos get table eparticlectr eparticlectr perrwdstbl2 -r | jq ".rows[0].curation_sum")
EDITOR_REWARD_SUM=$(cleos get table eparticlectr eparticlectr perrwdstbl2 -r | jq ".rows[0].editor_sum")

echo -e "   ${CYAN}CURATION REWARD SUM: ${CURATION_REWARD_SUM}${NC}"
echo -e "   ${CYAN}EDITOR REWARD SUM: ${EDITOR_REWARD_SUM}${NC}"

assert $(bc <<< "$CURATION_REWARD_SUM == 2420")
assert $(bc <<< "$EDITOR_REWARD_SUM == 480")

# Claim rewards
OLD_BALANCE4=$(balance eptestusersd)
OLD_BALANCE5=$(balance eptestuserse)
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)

REWARD_ID1=$(cleos get table eparticlectr eparticlectr rewardstbl2 -r | jq ".rows[0].id")
REWARD_ID2=$(bc <<< "$REWARD_ID1 - 1")
REWARD_ID3=$(bc <<< "$REWARD_ID1 - 2")
REWARD_ID4=$(bc <<< "$REWARD_ID1 - 3")
REWARD_ID5=$(bc <<< "$REWARD_ID1 - 7") # this one has edit points

echo -e "${CYAN}-----------------------CLAIM REWARDS-----------------------${NC}"
cleos push action eparticlectr rewardclmid "[\"$REWARD_ID1\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[\"$REWARD_ID2\"]" -p eptestusersg
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[\"$REWARD_ID3\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[\"$REWARD_ID4\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[\"$REWARD_ID5\"]" -p eptestusersd
assert $(bc <<< "$? == 0")

NEW_BALANCE4=$(balance eptestusersd)
NEW_BALANCE5=$(balance eptestuserse)
NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)

DIFF4=$(bc <<< "$NEW_BALANCE4 - $OLD_BALANCE4")
DIFF5=$(bc <<< "$NEW_BALANCE5 - $OLD_BALANCE5")
DIFF6=$(bc <<< "$NEW_BALANCE6 - $OLD_BALANCE6")
DIFF7=$(bc <<< "$NEW_BALANCE7 - $OLD_BALANCE7")

echo -e "${CYAN}REWARDS:${NC}"
echo -e "${CYAN}    eptestusersd: $DIFF4${NC}"
echo -e "${CYAN}    eptestuserse: $DIFF5${NC}"
echo -e "${CYAN}    eptestusersf: $DIFF6${NC}"
echo -e "${CYAN}    eptestusersg: $DIFF7${NC}"

assert $(bc <<< "$DIFF4 == 218.732")
assert $(bc <<< "$DIFF5 == 4.545")
assert $(bc <<< "$DIFF6 == 1.446")
assert $(bc <<< "$DIFF7 == 2.479")

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

echo -e "${CYAN}-----------------------NEXT TWO VOTE PURGES SHOULD FAIL-----------------------${NC}"
cleos push action eparticlectr oldvotepurge "[\"$IPFS1\", 100]" -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action eparticlectr oldvotepurge '["gumdrop", 100]' -p eptestusersa
assert $(bc <<< "$? == 1")

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

echo -e "${CYAN}-----------------------COMPLETE-----------------------${NC}"
