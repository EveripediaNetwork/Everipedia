BOOTSTRAP=0 # 1 if chain bootstrapping (bios, system contract, etc.) is needed, else 0
BUILD=0
HELP=0

#######################################
## HELPERS

function balance {
    cleos get table everipediaiq $1 accounts | jq ".rows[0].balance" | tr -d '"' | awk '{print $1}'
}

assert ()                 
{                         
                          
    if [ $1 -eq 0 ]; then
        FAIL_LINE=$( caller | awk '{print $1}')
        echo "Assertion failed. Line $FAIL_LINE:"
        head -n $FAIL_LINE $BASH_SOURCE | tail -n 1
        exit 99
    fi
} 

ipfsgen () {
    echo "Qm$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 44 | head -n 1)"
}

#################################

# Parse args
OPTIONS=$(getopt -o bsh --long build,bootstrap,help: -n test.sh -- "$@")
if [ $? != 0 ] ; then echo "Failed parsing options." >&2 ; exit 1 ; fi
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
    echo "Usage ./test.sh [-b | --build][-s | --bootstrap][-h | --help]";
    exit 0
fi

# Don't allow tests on mainnet
CHAIN_ID=$(cleos get info | jq ".chain_id" | tr -d '"')
if [ $CHAIN_ID = "aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906" ]; then
    >&2 echo "Cannot run test on mainnet"
    exit 1
fi

# Build
if [ $BUILD -eq 1 ]; then
    cp everipediaiq/* ~/eos/contracts/everipediaiq/
    cp eparticlectr/* ~/eos/contracts/eparticlectr/
    cp epiqtokenfee/* ~/eos/contracts/epiqtokenfee/
    cp iqsafesendiq/* ~/eos/contracts/iqsafesendiq/
    cp epsidechainn/* ~/eos/contracts/epsidechainn/
    sed -i -e 's/REWARD_INTERVAL = 1800/REWARD_INTERVAL = 5/g' ~/eos/contracts/eparticlectr/eparticlectr.hpp
    sed -i -e 's/DEFAULT_VOTING_TIME = 21600/DEFAULT_VOTING_TIME = 3/g' ~/eos/contracts/eparticlectr/eparticlectr.hpp
    sed -i -e 's/STAKING_DURATION = 21 \* 86400/STAKING_DURATION = 5/g' ~/eos/contracts/eparticlectr/eparticlectr.hpp
    cd ~/eos
    ./eosio_build.sh
    cd -
    cp everipediaiq/* ~/eos/contracts/everipediaiq/
    cp eparticlectr/* ~/eos/contracts/eparticlectr/
    cp epiqtokenfee/* ~/eos/contracts/epiqtokenfee/
    cp iqsafesendiq/* ~/eos/contracts/iqsafesendiq/
    cp epsidechainn/* ~/eos/contracts/epsidechainn/
fi

if [ $BOOTSTRAP -eq 1 ]; then
    # Create BIOS accounts
    rm ~/eosio-wallet/default.wallet
    cleos wallet create --to-console
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
    cleos create account eosio eosio.bpay EOS7gFoz5EB6tM2HxdV9oBjHowtFipigMVtrSZxrJV3X6Ph4jdPg3
    cleos create account eosio eosio.msig EOS6QRncHGrDCPKRzPYSiWZaAw7QchdKCMLWgyjLd1s2v8tiYmb45
    cleos create account eosio eosio.names EOS7ygRX6zD1sx8c55WxiQZLfoitYk2u8aHrzUxu6vfWn9a51iDJt
    cleos create account eosio eosio.ram EOS5tY6zv1vXoqF36gUg5CG7GxWbajnwPtimTnq6h5iptPXwVhnLC
    cleos create account eosio eosio.ramfee EOS6a7idZWj1h4PezYks61sf1RJjQJzrc8s4aUbe3YJ3xkdiXKBhF
    cleos create account eosio eosio.saving EOS8ioLmKrCyy5VyZqMNdimSpPjVF2tKbT5WKhE67vbVPcsRXtj5z
    cleos create account eosio eosio.stake EOS5an8bvYFHZBmiCAzAtVSiEiixbJhLY8Uy5Z7cpf3S9UoqA3bJb
    cleos create account eosio eosio.token EOS7JPVyejkbQHzE9Z4HwewNzGss11GB21NPkwTX2MQFmruYFqGXm
    cleos create account eosio eosio.vpay EOS6szGbnziz224T1JGoUUFu2LynVG72f8D3UVAS25QgwawdH983U
    
    # Bootstrap new chain
    cleos set contract eosio.token ~/eos/build/contracts/eosio.token/
    cleos set contract eosio.msig ~/eos/build/contracts/eosio.msig/ 
    cleos push action eosio.token create '[ "eosio", "10000000000.0000 EOS" ]' -p eosio.token
    cleos push action eosio.token issue '[ "eosio", "1000000000.0000 EOS", "memo" ]' -p eosio
    cleos set contract eosio ~/eos/build/contracts/eosio.bios/ 
    cleos set contract eosio ~/eos/build/contracts/eosio.system/ 
    cleos push action eosio setpriv '["eosio.msig", 1]' -p eosio@active
    
    # Deploy eosio.wrap
    cleos wallet import --private-key 5J3JRDhf4JNhzzjEZAsQEgtVuqvsPPdZv4Tm6SjMRx1ZqToaray
    cleos system newaccount eosio eosio.wrap EOS7LpGN1Qz5AbCJmsHzhG7sWEGd9mwhTXWmrYXqxhTknY2fvHQ1A --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos push action eosio setpriv '["eosio.wrap", 1]' -p eosio@active
    cleos set contract eosio.wrap ~/eos/build/contracts/eosio.sudo/ 
    
    # Import keys
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
    
    
    ## Create testing accounts
    cleos system newaccount eosio everipediaiq EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eparticlectr EOS8dYVzNktdam3Vn31mSXcmbj7J7MzGNudqKb3MLW1wdxWJpEbrw --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio epiqtokenfee EOS7mWN4AAmyPwY9ib1zYBKbwAteViwPQ4v9MtBWau4AKNZ4z2X4F --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio iqsafesendiq EOS7mJctpRnPPDhLHgnQVU3En7rvy3XHxrQPcsCqU8XZBV6tc7tMW --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersa EOS6HfoynFKZ1Msq1bKNwtSTTpEu8NssYMcgsy6nHqhRp3mz7tNkB --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersb EOS68s2PrHPDeGWTKczrNZCn4MDMgoW6SFHuTQhXYUNLT1hAmJei8 --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersc EOS7LpZDPKwWWXgJnNYnX6LCBgNqCEqugW9oUQr7XqcSfz7aSFk8o --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersd EOS6KnJPV1mDuS8pYuLucaWzkwbWjGPeJsfQDpqc7NZ4F7zTQh4Wt --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestuserse EOS76Pcyw1Hd7hW8hkZdUE1DQ3UiRtjmAKQ3muKwidRqmaM8iNtDy --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersf EOS7jnmGEK9i33y3N1aV29AYrFptyJ43L7pATBEuVq4fVXG1hzs3G --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer
    cleos system newaccount eosio eptestusersg EOS7vr4QpGP7ixUSeumeEahHQ99YDE5jiBucf1B2zhuidHzeni1dD --stake-cpu "50 EOS" --stake-net "10 EOS" --buy-ram-kbytes 5000 --transfer

    # Transfer EOS to testing accounts
    cleos transfer eosio eptestusersa "1000 EOS"
    cleos transfer eosio eptestusersb "1000 EOS"
    cleos transfer eosio eptestusersc "1000 EOS"
    cleos transfer eosio eptestusersd "1000 EOS"
    cleos transfer eosio eptestuserse "1000 EOS"
    cleos transfer eosio eptestusersf "1000 EOS"
    cleos transfer eosio eptestusersg "1000 EOS"

    ## Deploy contracts
    cleos set contract everipediaiq ~/eos/build/contracts/everipediaiq/
    cleos set contract eparticlectr ~/eos/build/contracts/eparticlectr/
    cleos set contract epiqtokenfee ~/eos/build/contracts/epiqtokenfee/
    cleos set contract iqsafesendiq ~/eos/build/contracts/iqsafesendiq/
    cleos set contract epsidechainn ~/eos/build/contracts/epsidechainn/
    cleos set account permission everipediaiq active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"eparticlectr","permission":"eosio.code" }, "weight":1 }, { "permission": { "actor":"everipediaiq","permission":"eosio.code" }, "weight":1 }] }' owner -p everipediaiq
    cleos set account permission eparticlectr active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"eparticlectr","permission":"eosio.code" }, "weight":1 }, { "permission": { "actor":"everipediaiq","permission":"eosio.code" }, "weight":1 }] }' owner -p eparticlectr
    cleos set account permission epiqtokenfee active '{ "threshold": 1, "keys": [{ "key": "EOS7mWN4AAmyPwY9ib1zYBKbwAteViwPQ4v9MtBWau4AKNZ4z2X4F", "weight": 1 }], "accounts": [{ "permission": { "actor":"epiqtokenfee","permission":"eosio.code" }, "weight":1 }] }' owner -p epiqtokenfee
    cleos set account permission iqsafesendiq active '{ "threshold": 1, "keys": [{ "key": "EOS7mJctpRnPPDhLHgnQVU3En7rvy3XHxrQPcsCqU8XZBV6tc7tMW", "weight": 1 }], "accounts": [{ "permission": { "actor":"iqsafesendiq","permission":"eosio.code" }, "weight":1 }] }' owner -p iqsafesendiq
    
    # Create and issue token
    cleos push action everipediaiq create "[\"everipediaiq\", \"100000000000.000 IQ\"]" -p everipediaiq@active
    cleos push action everipediaiq issue "[\"everipediaiq\", \"10000000000.000 IQ\", \"initial supply\"]" -p everipediaiq@active
fi


## Deploy contracts
cleos set contract everipediaiq ~/eos/build/contracts/everipediaiq/
cleos set contract eparticlectr ~/eos/build/contracts/eparticlectr/
cleos set contract epiqtokenfee ~/eos/build/contracts/epiqtokenfee/
cleos set contract iqsafesendiq ~/eos/build/contracts/iqsafesendiq/

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

cleos push action everipediaiq transfer '["everipediaiq", "eptestusersa", "10000.000 IQ"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersb", "10000.000 IQ"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersc", "10000.000 IQ"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersd", "10000.000 IQ"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestuserse", "10000.000 IQ"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersf", "10000.000 IQ"]' -p everipediaiq
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["everipediaiq", "eptestusersg", "10000.000 IQ"]' -p everipediaiq
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

cleos push action everipediaiq transfer '["eptestusersa", "eptestusersb", "1000.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersc", "1000.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersd", "1000.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestuserse", "1000.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersf", "1000.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersg", "1000.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 0")

# Safe transfers
cleos push action everipediaiq transfer '["eptestusersa", "iqsafesendiq", "1000.000 IQ", "eptestuserse"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq transfer '["eptestusersa", "iqsafesendiq", "1000.000 IQ", "eptestusersc"]' -p eptestusersa
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
echo "Next 4 transfers should fail"
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersb", "10000000.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersb", "0.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action everipediaiq transfer '["eptestusersa", "eptestusersb", "-100.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 1")

# Burns
OLD_SUPPLY=$(cleos get table everipediaiq IQ stat | jq ".rows[0].supply" | tr -d '"' | awk '{print $1}')
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)

cleos push action everipediaiq burn '["eptestusersg", "1000.000 IQ"]' -p eptestusersg
assert $(bc <<< "$? == 0")
cleos push action everipediaiq burn '["eptestusersf", "1000.000 IQ"]' -p eptestusersf
assert $(bc <<< "$? == 0")

NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)
NEW_SUPPLY=$(cleos get table everipediaiq IQ stat | jq ".rows[0].supply" | tr -d '"' | awk '{print $1}')

assert $(bc <<< "$OLD_BALANCE6 - $NEW_BALANCE6 == 1000")
assert $(bc <<< "$OLD_BALANCE7 - $NEW_BALANCE7 == 1000")
assert $(bc <<< "$OLD_SUPPLY - $NEW_SUPPLY == 2000")

# Failed burns
cleos push action everipediaiq burn '["eptestusersg", "1000.000 IQ"]' -p eptestusersf
assert $(bc <<< "$? == 1")
cleos push action everipediaiq burn '["eptestusersf", "10000000.000 IQ"]' -p eptestusersf
assert $(bc <<< "$? == 1")

# Buy IQ from DEX
echo "Below should pass"
cleos push action everipediaiq paytxfee '["everipediaiq", "200000.000 IQ"]' -p everipediaiq

OLD_BALANCE1=$(balance eptestusersa)
OLD_BALANCE2=$(balance eptestusersb)
OLD_BALANCE3=$(balance eptestusersc)

echo "Current Fee Balance: $OLD_FEE_BALANCE"
cleos transfer eptestusersa epiqtokenfee "10 EOS"
assert $(bc <<< "$? == 0")
cleos transfer eptestusersb epiqtokenfee "1 EOS"
assert $(bc <<< "$? == 0")
cleos transfer eptestusersb epiqtokenfee "200 EOS"
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
NEW_BALANCE2=$(balance eptestusersb)
NEW_BALANCE3=$(balance eptestusersc)


# Stake tokens
cleos push action everipediaiq brainmeiq '["eptestusersa", 2000]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action everipediaiq brainmeiq '["eptestusersb", 2000]' -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action everipediaiq brainmeiq '["eptestusersc", 2000]' -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action everipediaiq brainmeiq '["eptestusersd", 2000]' -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action everipediaiq brainmeiq '["eptestuserse", 2000]' -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action everipediaiq brainmeiq '["eptestusersf", 2000]' -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action everipediaiq brainmeiq '["eptestusersg", 2000]' -p eptestusersg
assert $(bc <<< "$? == 0")

# Failed stakes
echo "Next 3 stakes should fail"
cleos push action everipediaiq brainmeiq '["eptestusersg", 0]' -p eptestusersg
assert $(bc <<< "$? == 1")
cleos push action everipediaiq brainmeiq '["eptestusersg", -1000]' -p eptestusersg
assert $(bc <<< "$? == 1")
cleos push action everipediaiq brainmeiq '["eptestusersg", 1000.324]' -p eptestusersg
assert $(bc <<< "$? == 1")
echo "Below should pass"

# Proposals
IPFS1=$(ipfsgen)
IPFS2=$(ipfsgen)
IPFS3=$(ipfsgen)
IPFS4=$(ipfsgen)
IPFS5=$(ipfsgen)
IPFS6=$(ipfsgen)
IPFS7=$(ipfsgen)
IPFS8=$(ipfsgen)

cleos push action eparticlectr propose "[ \"eptestusersa\", \"$IPFS1\" ]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose "[ \"eptestusersb\", \"$IPFS2\" ]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose "[ \"eptestusersc\", \"$IPFS3\" ]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose "[ \"eptestusersd\", \"$IPFS4\" ]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose "[ \"eptestuserse\", \"$IPFS5\" ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose "[ \"eptestuserse\", \"$IPFS6\", \"$IPFS7\" ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr propose "[ \"eptestuserse\", \"$IPFS7\", \"\", \"$IPFS8\" ]" -p eptestuserse
assert $(bc <<< "$? == 0")

# Failed proposals
echo "Next 3 proposals should fail"
cleos push action eparticlectr propose "[ \"eptestuserse\", \"$IPFS1\" ]" -p eptestuserse
assert $(bc <<< "$? == 1")
echo "Below should pass"

# Votes
sleep 1

# Win
cleos push action eparticlectr votebyhash "[ \"eptestusersb\", \"$IPFS1\", 1, 50 ]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersc\", \"$IPFS1\", 1, 100 ]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersd\", \"$IPFS1\", 0, 50 ]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestuserse\", \"$IPFS1\", 1, 500 ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersf\", \"$IPFS1\", 0, 350 ]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersg\", \"$IPFS1\", 0, 80 ]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Lose
cleos push action eparticlectr votebyhash "[ \"eptestusersb\", \"$IPFS2\", 1, 5 ]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersc\", \"$IPFS2\", 0, 100 ]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersd\", \"$IPFS2\", 1, 500 ]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestuserse\", \"$IPFS2\", 0, 500 ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersf\", \"$IPFS2\", 1, 35 ]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersg\", \"$IPFS2\", 0, 800 ]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Tie (net votes dont't sum to 0 because proposer auto-votes 10 in favor)
cleos push action eparticlectr votebyhash "[ \"eptestusersb\", \"$IPFS3\", 1, 5 ]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersc\", \"$IPFS3\", 0, 100 ]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersd\", \"$IPFS3\", 1, 490 ]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestuserse\", \"$IPFS3\", 0, 500 ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersf\", \"$IPFS3\", 1, 35 ]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersg\", \"$IPFS3\", 1, 60 ]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Unananimous win
cleos push action eparticlectr votebyhash "[ \"eptestusersb\", \"$IPFS4\", 1, 5 ]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersc\", \"$IPFS4\", 1, 10 ]" -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersd\", \"$IPFS4\", 1, 50 ]" -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestuserse\", \"$IPFS4\", 1, 50 ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersf\", \"$IPFS4\", 1, 35 ]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr votebyhash "[ \"eptestusersg\", \"$IPFS4\", 1, 60 ]" -p eptestusersg
assert $(bc <<< "$? == 0")

# Flip vote loss
cleos push action eparticlectr votebyhash "[ \"eptestuserse\", \"$IPFS5\", 0, 20 ]" -p eptestuserse
assert $(bc <<< "$? == 0")

# Bad votes
echo "Next 2 votes should fail"
cleos push action eparticlectr votebyhash "[ \"eptestusersg\", \"$IPFS4\", 1, 50000 ]" -p eptestusersg
assert $(bc <<< "$? == 1")
cleos push action eparticlectr votebyhash "[ \"eptestusersc\", \"$IPFS4\", 1, 500 ]" -p eptestusersg
assert $(bc <<< "$? == 1")


# Finalize
echo "Early finalize should fail"
cleos push action eparticlectr fnlbyhash "[ \"$IPFS3\" ]" -p eptestuserse
assert $(bc <<< "$? == 1")

echo "Sleeping until voting period ends..."
sleep 4 # wait for test voting period to end

# Bad vote
echo "Late vote should fail"
cleos push action eparticlectr votebyhash "[ \"eptestusersc\", \"$IPFS4\", 1, 500 ]" -p eptestusersc
assert $(bc <<< "$? == 1")

echo "Below should pass"
cleos push action eparticlectr fnlbyhash "[ \"$IPFS1\" ]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr fnlbyhash "[ \"$IPFS2\" ]" -p eptestusersg
assert $(bc <<< "$? == 0")
cleos push action eparticlectr fnlbyhash "[ \"$IPFS3\" ]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr fnlbyhash "[ \"$IPFS4\" ]" -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr fnlbyhash "[ \"$IPFS5\" ]" -p eptestusersa
assert $(bc <<< "$? == 0")

echo "Next finalize should fail"
cleos push action --force-unique eparticlectr fnlbyhash "[ \"$IPFS3\" ]" -p eptestuserse
assert $(bc <<< "$? == 1")

# Slash checks

# Procrewards
echo "Sleeping until reward period ends..."
sleep 5 
FINALIZE_PERIOD=$(cleos get table eparticlectr eparticlectr rewardstbl -l 500 | jq ".rows[-1].proposal_finalize_period")
ONE_BACK_PERIOD=$(bc <<< "$FINALIZE_PERIOD - 1")

echo "Below should pass"
cleos push action eparticlectr procrewards "[\"$FINALIZE_PERIOD\"]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr procrewards "[\"$ONE_BACK_PERIOD\"]" -p eptestusersa

CURATION_REWARD_SUM=$(cleos get table eparticlectr eparticlectr periodreward -l 500 | jq ".rows[-1].curation_sum")
EDITOR_REWARD_SUM=$(cleos get table eparticlectr eparticlectr periodreward -l 500 | jq ".rows[-1].editor_sum")

assert $(bc <<< "$CURATION_REWARD_SUM == 2290")
assert $(bc <<< "$EDITOR_REWARD_SUM == 880")

# Claim rewards
OLD_BALANCE1=$(balance eptestusersa)
OLD_BALANCE2=$(balance eptestusersb)
OLD_BALANCE3=$(balance eptestusersc)
OLD_BALANCE4=$(balance eptestusersd)
OLD_BALANCE5=$(balance eptestuserse)
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)

REWARD_ID1=$(cleos get table eparticlectr eparticlectr rewardstbl -l 500 | jq ".rows[-1].id")
REWARD_ID2=$(bc <<< "$REWARD_ID1 - 1")
REWARD_ID3=$(bc <<< "$REWARD_ID1 - 2")
REWARD_ID4=$(bc <<< "$REWARD_ID1 - 3")

cleos push action eparticlectr rewardclmid "[\"$REWARD_ID1\"]" -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[\"$REWARD_ID2\"]" -p eptestusersg
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[\"$REWARD_ID3\"]" -p eptestusersf
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmid "[\"$REWARD_ID4\"]" -p eptestuserse
assert $(bc <<< "$? == 0")

MID_BALANCE1=$(balance eptestusersa)
MID_BALANCE2=$(balance eptestusersb)
MID_BALANCE3=$(balance eptestusersc)
MID_BALANCE4=$(balance eptestusersd)
MID_BALANCE5=$(balance eptestuserse)
MID_BALANCE6=$(balance eptestusersf)
MID_BALANCE7=$(balance eptestusersg)

assert $(bc <<< "$MID_BALANCE5 - $OLD_BALANCE5 == 2.619")
assert $(bc <<< "$MID_BALANCE7 - $OLD_BALANCE7 == 2.62")
assert $(bc <<< "$MID_BALANCE6 - $OLD_BALANCE6 == 1.528")

cleos push action eparticlectr rewardclmall '["eptestusersa"]' -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmall '["eptestusersb"]' -p eptestusersb
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmall '["eptestusersc"]' -p eptestusersc
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmall '["eptestusersd"]' -p eptestusersd
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmall '["eptestuserse"]' -p eptestuserse
assert $(bc <<< "$? == 0")
cleos push action eparticlectr rewardclmall '["eptestusersg"]' -p eptestusersg
assert $(bc <<< "$? == 0")

NEW_BALANCE1=$(balance eptestusersa)
NEW_BALANCE2=$(balance eptestusersb)
NEW_BALANCE3=$(balance eptestusersc)
NEW_BALANCE4=$(balance eptestusersd)
NEW_BALANCE5=$(balance eptestuserse)
NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)

bc <<< "$NEW_BALANCE1 -$MID_BALANCE1"
bc <<< "$NEW_BALANCE2 -$MID_BALANCE2"
bc <<< "$NEW_BALANCE3 -$MID_BALANCE3"
bc <<< "$NEW_BALANCE4 -$MID_BALANCE4"
bc <<< "$NEW_BALANCE5 -$MID_BALANCE5"
bc <<< "$NEW_BALANCE6 -$MID_BALANCE6"
bc <<< "$NEW_BALANCE7 -$MID_BALANCE7"

assert $(bc <<< "$NEW_BALANCE1 - $MID_BALANCE1 == 300.436")
assert $(bc <<< "$NEW_BALANCE2 - $MID_BALANCE2 == 2.401") 
assert $(bc <<< "$NEW_BALANCE3 - $MID_BALANCE3 == 9.168")
assert $(bc <<< "$NEW_BALANCE4 - $MID_BALANCE4 == 102.620")
assert $(bc <<< "$NEW_BALANCE5 - $MID_BALANCE5 == 43.668")
assert $(bc <<< "$NEW_BALANCE6 - $MID_BALANCE6 == 0.000") 
assert $(bc <<< "$NEW_BALANCE7 - $MID_BALANCE7 == 34.934")

echo "Next 3 claims should fail"
cleos push action eparticlectr rewardclmall '["eptestusersf"]' -p eptestusersf
assert $(bc <<< "$? != 0")
cleos push action --force-unique eparticlectr rewardclmid "[\"$REWARD_ID3\"]" -p eptestusersf
assert $(bc <<< "$? != 0")
cleos push action eparticlectr rewardclmid '[764333]' -p eptestusersf
assert $(bc <<< "$? != 0")

echo "Below should pass"
echo $IPFS1
cleos push action eparticlectr oldvotepurge "[\"$IPFS1\", 100]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr oldvotepurge "[\"$IPFS2\", 100]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr oldvotepurge "[\"$IPFS3\", 2]" -p eptestusersa
assert $(bc <<< "$? == 0")
cleos push action eparticlectr oldvotepurge "[\"$IPFS3\", 5]" -p eptestusersa
assert $(bc <<< "$? == 0")

echo "Next 2 vote purges should fail"
cleos push action eparticlectr oldvotepurge "[\"$IPFS1\", 100]" -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action eparticlectr oldvotepurge '["gumdrop", 100]' -p eptestusersa
assert $(bc <<< "$? == 1")

echo "Below should pass"
STAKE1=$(cleos get table eparticlectr eparticlectr staketbl -l 500 | jq ".rows[-1]")
STAKE_USER1=$(echo $STAKE1 | jq ".user" | tr -d '"')
STAKE_ID1=$(echo $STAKE1 | jq ".id" | tr -d '"')
STAKE2=$(cleos get table eparticlectr eparticlectr staketbl -l 500 | jq ".rows[-2]")
STAKE_USER2=$(echo $STAKE2 | jq ".user" | tr -d '"')
STAKE_ID2=$(echo $STAKE2 | jq ".id" | tr -d '"')
STAKE3=$(cleos get table eparticlectr eparticlectr staketbl -l 500 | jq ".rows[-3]")
STAKE_USER3=$(echo $STAKE3 | jq ".user" | tr -d '"')
STAKE_ID3=$(echo $STAKE3 | jq ".id" | tr -d '"')
STAKE4=$(cleos get table eparticlectr eparticlectr staketbl -l 500 | jq ".rows[-4]")
STAKE_USER4=$(echo $STAKE4 | jq ".user" | tr -d '"')
STAKE_ID4=$(echo $STAKE4 | jq ".id" | tr -d '"')

cleos push action eparticlectr brainclmid "[\"$STAKE_USER1\", \"$STAKE_ID1\"]" -p $STAKE_USER1
assert $(bc <<< "$? == 0")
cleos push action eparticlectr brainclmid "[\"$STAKE_USER2\", \"$STAKE_ID2\"]" -p $STAKE_USER2
assert $(bc <<< "$? == 0")
cleos push action eparticlectr brainclmid "[\"$STAKE_USER3\", \"$STAKE_ID3\"]" -p $STAKE_USER3
assert $(bc <<< "$? == 0")

echo "The following 2 claims should fail"
cleos push action eparticlectr brainclmid "[\"eptestuserse\", \"$STAKE_ID4\"]" -p eptestuserse 
assert $(bc <<< "$? == 1")
cleos push action eparticlectr brainclmid "[\"eptestusersa\", \"$STAKE_ID1\"]" -p eptestusersf
assert $(bc <<< "$? == 1")

echo "Testing successfully complete"
