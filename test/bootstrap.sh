#!/bin/bash
# use bash ./bootstrap.sh, NOT sh ./bootstrap.sh,

CYAN='\033[1;36m'
NC='\033[0m'

trap ctrl_c INT
ctrl_c () {
    exit 11;
}

RECOMPILE_AND_RESET_EOSIO_CONTRACTS=0
REBUILD_EVERIPEDIA_CONTRACTS=1
RESET_NODEOS=1
# EOSIO_CONTRACTS_ROOT=/home/kedar/eosio.contracts/build/contracts/
EOSIO_CONTRACTS_ROOT="/home/${USER}/eosio.contracts/build/contracts"
NODEOS_HOST="127.0.0.1"
NODEOS_PROTOCOL="http"
NODEOS_PORT="8888"
NODEOS_LOCATION="${NODEOS_PROTOCOL}://${NODEOS_HOST}:${NODEOS_PORT}"

if [ $RESET_NODEOS -eq 1 ]; then
    echo -e "${CYAN}-----------------------PURGING NODEOS-----------------------${NC}"
    rm -rf ~/.local/share/eosio/nodeos
    pkill -f nodeos
    gnome-terminal --tab -e "nodeos -e -p eosio --plugin eosio::producer_plugin --plugin eosio::chain_api_plugin --plugin eosio::http_plugin --plugin eosio::history_plugin --plugin eosio::history_api_plugin --access-control-allow-origin='*' --contracts-console --http-validate-host=false --verbose-http-errors --filter-on='*' --http-server-address='0.0.0.0:8888'"
    echo -e "${CYAN}RESTARTING NODEOS${NC}"
    sleep 5
fi


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

#################################

# Don't allow tests on mainnet
CHAIN_ID=$(cleos get info | jq ".chain_id" | tr -d '"')
if [ $CHAIN_ID = "aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906" ]; then
    >&2 echo -e "Cannot run test on mainnet"
    exit 1
fi

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

if [ $RECOMPILE_AND_RESET_EOSIO_CONTRACTS -eq 1 ]; then
    # Compile the contracts manually due to an error in the build.sh script in eosio.contracts
    echo -e "${CYAN}-----------------------RECOMPILING CONTRACTS-----------------------${NC}"
    cd "${EOSIO_CONTRACTS_ROOT}/eosio.token"
    eosio-cpp -I ./include -o ./eosio.token.wasm ./src/eosio.token.cpp --abigen
    cd "${EOSIO_CONTRACTS_ROOT}/eosio.msig"
    eosio-cpp -I ./include -o ./eosio.msig.wasm ./src/eosio.msig.cpp --abigen
    cd "${EOSIO_CONTRACTS_ROOT}/eosio.bios"
    # NOTE, DO https://github.com/EOSIO/eos/issues/9148 FIRST
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
cleos wallet import --private-key 5JVvgRBGKXSzLYMHgyMFH5AHjDzrMbyEPRdj8J6EVrXJs8adFpK # everipediaiq
cleos wallet import --private-key 5KBhzoszXcrphWPsuyTxoKJTtMMcPhQYwfivXxma8dDeaLG7Hsq # eparticlectr
cleos wallet import --private-key 5J9UYL9VcDfykAB7mcx9nFfRKki5djG9AXGV6DJ8d5XPYDJDyUy # eptestusersa
cleos wallet import --private-key 5HtnwWCbMpR1ATYoXY4xb1E4HAU9mzGvDrawyK5May68cYrJR7r # eptestusersb
cleos wallet import --private-key 5Jjx6z5SJ7WhVU2bgG2si6Y1up1JTXHj7qhC9kKUXPXb1K1Xnj6 # eptestusersc
cleos wallet import --private-key 5HyQUNxE9T83RLiS9HdZeJck5WRqNSSzVztZ3JwYvkYPrG8Ca1U # eptestusersd
cleos wallet import --private-key 5KZC9soBHR4AF1kt93pCNfjSLPJN9y51AKR4r4vvPsiPvFdLG3t # eptestuserse
cleos wallet import --private-key 5K9dtgQXBCggrMugEAxsBfcUZ8mmnbDpiZZYt7RvoxwChqiFdS1 # eptestusersf
cleos wallet import --private-key 5JU8qQMV3cD4HzA14meGEBWwWxNWAk9QAebSkQotv4wXHkKncNh # eptestusersg

# Create user accounts
echo -e "${CYAN}-----------------------USER ACCOUNTS-----------------------${NC}"
cleos create account eosio everipediaiq EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP
cleos create account eosio eparticlectr EOS8dYVzNktdam3Vn31mSXcmbj7J7MzGNudqKb3MLW1wdxWJpEbrw
cleos create account eosio eptestusersa EOS6HfoynFKZ1Msq1bKNwtSTTpEu8NssYMcgsy6nHqhRp3mz7tNkB
cleos create account eosio eptestusersb EOS68s2PrHPDeGWTKczrNZCn4MDMgoW6SFHuTQhXYUNLT1hAmJei8
cleos create account eosio eptestusersc EOS7LpZDPKwWWXgJnNYnX6LCBgNqCEqugW9oUQr7XqcSfz7aSFk8o
cleos create account eosio eptestusersd EOS6KnJPV1mDuS8pYuLucaWzkwbWjGPeJsfQDpqc7NZ4F7zTQh4Wt
cleos create account eosio eptestuserse EOS76Pcyw1Hd7hW8hkZdUE1DQ3UiRtjmAKQ3muKwidRqmaM8iNtDy
cleos create account eosio eptestusersf EOS7jnmGEK9i33y3N1aV29AYrFptyJ43L7pATBEuVq4fVXG1hzs3G
cleos create account eosio eptestusersg EOS7vr4QpGP7ixUSeumeEahHQ99YDE5jiBucf1B2zhuidHzeni1dD

# Deploy eosio.wrap
echo -e "${CYAN}-----------------------EOSIO WRAP-----------------------${NC}"
cleos wallet import --private-key 5J3JRDhf4JNhzzjEZAsQEgtVuqvsPPdZv4Tm6SjMRx1ZqToaray
cleos create account eosio eosio.wrap EOS7LpGN1Qz5AbCJmsHzhG7sWEGd9mwhTXWmrYXqxhTknY2fvHQ1A
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

if [ $REBUILD_EVERIPEDIA_CONTRACTS -eq 1 ]; then
    cd ..

    echo "Deleting old everipediaiq files..."
    cd everipediaiq
    rm -rf everipediaiq.abi everipediaiq.wasm everipediaiq.wast
    cd ..

    echo "Deleting old eparticlectr files..."
    cd eparticlectr
    rm -rf eparticlectr.abi eparticlectr.wasm eparticlectr.wast
    cd ..

    cd everipediaiq
    echo "Building everipediaiq..."
    /usr/bin/eosio-cpp everipediaiq.cpp -O=3 -lto-opt=O3 -stack-size=16384 -abigen -o everipediaiq.wasm -I everipediaiq.clauses.md -I everipediaiq.contracts.md -I ../eparticlectr
    cd ..

    cd eparticlectr
    echo "Building eparticlectr..."
    /usr/bin/eosio-cpp eparticlectr.cpp -O=3 -lto-opt=O3 -stack-size=16384 -abigen -o eparticlectr.wasm -I eparticlectr.clauses.md -I eparticlectr.contracts.md
    cd ..

    cd test

    sleep 1
fi

## Deploy contracts
echo -e "${CYAN}-----------------------DEPLOYING EVERIPEDIA CONTRACTS-----------------------${NC}"
cleos set account permission everipediaiq active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"eparticlectr","permission":"eosio.code" }, "weight":1 }, { "permission": { "actor":"everipediaiq","permission":"eosio.code" }, "weight":1 }] }' owner -p everipediaiq
cleos set account permission eparticlectr active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"eparticlectr","permission":"eosio.code" }, "weight":1 }, { "permission": { "actor":"everipediaiq","permission":"eosio.code" }, "weight":1 }] }' owner -p eparticlectr
cleos set contract everipediaiq ../everipediaiq/
cleos set contract eparticlectr ../eparticlectr/

# Create and issue token
echo -e "${CYAN}-----------------------CREATING IQ TOKEN-----------------------${NC}"
cleos push action everipediaiq create "[\"everipediaiq\", \"100000000000.000 IQ\"]" -p everipediaiq@active
cleos push action everipediaiq issue "[\"everipediaiq\", \"10000000000.000 IQ\", \"initial supply\"]" -p everipediaiq@active

