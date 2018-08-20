BOOTSTRAP=0 # 1 if chain bootstrapping (bios, system contract, etc.) is needed, else 0
MAIN_ACCOUNT=eosio
ARTICLE_CONTRACT=eparticlectr
TOKEN_CONTRACT=everipediaiq
FEE_ACCOUNT=epiqtokenfee

function balance {
    cleos get table $TOKEN_CONTRACT $1 accounts | jq ".rows[0].balance" | tr -d '"' | awk '{print $1}'
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


# Don't allow tests on mainnet
CHAIN_ID=$(cleos get info | jq ".chain_id" | tr -d '"')
echo $CHAIN_ID
if [ $CHAIN_ID = "aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906" ]; then
    >&2 echo "Cannot run test on mainnet"
    exit 1
fi


if [ $BOOTSTRAP -eq 1 ]; then
    # Create BIOS accounts
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
    
    
    ## Create testing accounts
    cleos system newaccount eosio $TOKEN_CONTRACT EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio $ARTICLE_CONTRACT EOS8dYVzNktdam3Vn31mSXcmbj7J7MzGNudqKb3MLW1wdxWJpEbrw --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio epiqtokenfee EOS7mWN4AAmyPwY9ib1zYBKbwAteViwPQ4v9MtBWau4AKNZ4z2X4F --stake-cpu "5 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio eptestusersa EOS6HfoynFKZ1Msq1bKNwtSTTpEu8NssYMcgsy6nHqhRp3mz7tNkB --stake-cpu "5 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio eptestusersb EOS68s2PrHPDeGWTKczrNZCn4MDMgoW6SFHuTQhXYUNLT1hAmJei8 --stake-cpu "5 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio eptestusersc EOS7LpZDPKwWWXgJnNYnX6LCBgNqCEqugW9oUQr7XqcSfz7aSFk8o --stake-cpu "5 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio eptestusersd EOS6KnJPV1mDuS8pYuLucaWzkwbWjGPeJsfQDpqc7NZ4F7zTQh4Wt --stake-cpu "5 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio eptestuserse EOS76Pcyw1Hd7hW8hkZdUE1DQ3UiRtjmAKQ3muKwidRqmaM8iNtDy --stake-cpu "5 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio eptestusersf EOS7jnmGEK9i33y3N1aV29AYrFptyJ43L7pATBEuVq4fVXG1hzs3G --stake-cpu "5 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer
    cleos system newaccount eosio eptestusersg EOS7vr4QpGP7ixUSeumeEahHQ99YDE5jiBucf1B2zhuidHzeni1dD --stake-cpu "5 EOS" --stake-net "1 EOS" --buy-ram-kbytes 1000 --transfer

    # Transfer EOS to testing accounts
    cleos transfer eosio eptestusersa "1000 EOS"
    cleos transfer eosio eptestusersb "1000 EOS"
    cleos transfer eosio eptestusersc "1000 EOS"
    cleos transfer eosio eptestusersd "1000 EOS"
    cleos transfer eosio eptestuserse "1000 EOS"
    cleos transfer eosio eptestusersf "1000 EOS"
    cleos transfer eosio eptestusersg "1000 EOS"

    ## Deploy contracts
    cleos set contract $TOKEN_CONTRACT ~/eos/build/contracts/everipediaiq/
    cleos set contract $ARTICLE_CONTRACT ~/eos/build/contracts/eparticlectr/
    cleos set account permission $TOKEN_CONTRACT active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"eparticlectr","permission":"eosio.code" }, "weight":1 }] }' owner -p $TOKEN_CONTRACT
    cleos set account permission $ARTICLE_CONTRACT active '{ "threshold": 1, "keys": [{ "key": "EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP", "weight": 1 }], "accounts": [{ "permission": { "actor":"everipediaiq","permission":"eosio.code" }, "weight":1 }] }' owner -p $ARTICLE_CONTRACT
    
    # Create and issue token
    cleos push action $TOKEN_CONTRACT create "[\"$TOKEN_CONTRACT\", \"100000000000.000 IQ\"]" -p $TOKEN_CONTRACT@active
    cleos push action $TOKEN_CONTRACT issue "[\"$TOKEN_CONTRACT\", \"10000000000.000 IQ\", \"initial supply\"]" -p $TOKEN_CONTRACT@active
fi


## Deploy contracts
cleos set contract $TOKEN_CONTRACT ~/eos/build/contracts/everipediaiq/
cleos set contract $ARTICLE_CONTRACT ~/eos/build/contracts/eparticlectr/

# No transfer fees for privileged accounts
OLD_BALANCE1=$(balance eptestusersa)
OLD_BALANCE2=$(balance eptestusersb)
OLD_BALANCE3=$(balance eptestusersc)
OLD_BALANCE4=$(balance eptestusersd)
OLD_BALANCE5=$(balance eptestuserse)
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)
OLD_FEE_BALANCE=$(balance $FEE_ACCOUNT)

cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestusersa\", \"10000.000 IQ\"]" -p $TOKEN_CONTRACT
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestusersb\", \"10000.000 IQ\"]" -p $TOKEN_CONTRACT
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestusersc\", \"10000.000 IQ\"]" -p $TOKEN_CONTRACT
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestusersd\", \"10000.000 IQ\"]" -p $TOKEN_CONTRACT
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestuserse\", \"10000.000 IQ\"]" -p $TOKEN_CONTRACT
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestusersf\", \"10000.000 IQ\"]" -p $TOKEN_CONTRACT
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestusersg\", \"10000.000 IQ\"]" -p $TOKEN_CONTRACT

NEW_BALANCE1=$(balance eptestusersa)
NEW_BALANCE2=$(balance eptestusersb)
NEW_BALANCE3=$(balance eptestusersc)
NEW_BALANCE4=$(balance eptestusersd)
NEW_BALANCE5=$(balance eptestuserse)
NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)
NEW_FEE_BALANCE=$(balance $FEE_ACCOUNT)

assert $(bc <<< "$NEW_BALANCE1 - $OLD_BALANCE1 == 10000")
assert $(bc <<< "$NEW_BALANCE2 - $OLD_BALANCE2 == 10000")
assert $(bc <<< "$NEW_BALANCE3 - $OLD_BALANCE3 == 10000")
assert $(bc <<< "$NEW_BALANCE4 - $OLD_BALANCE4 == 10000")
assert $(bc <<< "$NEW_BALANCE5 - $OLD_BALANCE5 == 10000")
assert $(bc <<< "$NEW_BALANCE6 - $OLD_BALANCE6 == 10000")
assert $(bc <<< "$NEW_BALANCE7 - $OLD_BALANCE7 == 10000")
assert $(bc <<< "$NEW_FEE_BALANCE == $OLD_FEE_BALANCE")


# Transfer fees for standard transfers
OLD_BALANCE1=$(balance eptestusersa)
OLD_BALANCE2=$(balance eptestusersb)
OLD_BALANCE3=$(balance eptestusersc)
OLD_BALANCE4=$(balance eptestusersd)
OLD_BALANCE5=$(balance eptestuserse)
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)
OLD_FEE_BALANCE=$(balance $FEE_ACCOUNT)

cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestusersb", "1000.000 IQ"]' -p eptestusersa
cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestusersc", "1000.000 IQ"]' -p eptestusersa
cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestusersd", "1000.000 IQ"]' -p eptestusersa
cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestuserse", "1000.000 IQ"]' -p eptestusersa
cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestusersf", "1000.000 IQ"]' -p eptestusersa
cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestusersg", "1000.000 IQ"]' -p eptestusersa

NEW_BALANCE1=$(balance eptestusersa)
NEW_BALANCE2=$(balance eptestusersb)
NEW_BALANCE3=$(balance eptestusersc)
NEW_BALANCE4=$(balance eptestusersd)
NEW_BALANCE5=$(balance eptestuserse)
NEW_BALANCE6=$(balance eptestusersf)
NEW_BALANCE7=$(balance eptestusersg)
NEW_FEE_BALANCE=$(balance $FEE_ACCOUNT)

assert $(bc <<< "$OLD_BALANCE1 - $NEW_BALANCE1 == 6000")
assert $(bc <<< "$NEW_BALANCE2 - $OLD_BALANCE2 == 999")
assert $(bc <<< "$NEW_BALANCE3 - $OLD_BALANCE3 == 999")
assert $(bc <<< "$NEW_BALANCE4 - $OLD_BALANCE4 == 999")
assert $(bc <<< "$NEW_BALANCE5 - $OLD_BALANCE5 == 999")
assert $(bc <<< "$NEW_BALANCE6 - $OLD_BALANCE6 == 999")
assert $(bc <<< "$NEW_BALANCE7 - $OLD_BALANCE7 == 999")
assert $(bc <<< "$NEW_FEE_BALANCE - $OLD_FEE_BALANCE == 6")

# Failed transfers
echo "Next 3 transfers should fail"
cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestusersb", "10000000.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestusersb", "0.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 1")
cleos push action $TOKEN_CONTRACT transfer '["eptestusersa", "eptestusersb", "-100.000 IQ"]' -p eptestusersa
assert $(bc <<< "$? == 1")

# Stake tokens
cleos push action everipediaiq brainmeiq '["eptestusersa", 1000]' -p eptestusersa
cleos push action everipediaiq brainmeiq '["eptestusersb", 1000]' -p eptestusersb
cleos push action everipediaiq brainmeiq '["eptestusersc", 1000]' -p eptestusersc
cleos push action everipediaiq brainmeiq '["eptestusersd", 1000]' -p eptestusersd
cleos push action everipediaiq brainmeiq '["eptestuserse", 1000]' -p eptestuserse
cleos push action everipediaiq brainmeiq '["eptestusersf", 1000]' -p eptestusersf
cleos push action everipediaiq brainmeiq '["eptestusersg", 1000]' -p eptestusersg

# Failed stakes
echo "Next 3 stakes should fail"
cleos push action everipediaiq brainmeiq '["eptestusersg", 0]' -p eptestusersg
assert $(bc <<< "$? == 1")
cleos push action everipediaiq brainmeiq '["eptestusersg", -1000]' -p eptestusersg
assert $(bc <<< "$? == 1")
cleos push action everipediaiq brainmeiq '["eptestusersg", 1000.324]' -p eptestusersg
assert $(bc <<< "$? == 1")


# Proposals
#cleos push action eparticlectr propose '[ "eptestusersb", "Qme6VKj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", "", "" ]' -p coincoin

## TEST 1
## Expected reward of 80 for coincoin
#cleos push action eparticlectr propose '[ "coincoin", "Qme6VKj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", "", "" ]' -p coincoin
#cleos push action eparticlectr votebyhash '[ "coincoin", "Qme6VKj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", 1, 50 ]' -p coincoin
#cleos push action eparticlectr fnlbyhash  '[ "Qme6VKj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W"]' -p coincoin
#
## TEST 2
## Expected reward of 80 for coincoin
#cleos push action eparticlectr propose '[ "coincoin", "Qme1Zpj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", "", "" ]' -p coincoin
#cleos push action eparticlectr votebyhash '[ "coincoin", "Qme1Zpj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", 1, 500 ]' -p coincoin
#cleos push action eparticlectr fnlbyhash  '[ "Qme1Zpj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W"]' -p coincoin
#
## TEST 3
## coincoin start 20060.000 IQ | minieo start 9899978.000 IQ
## Expected reward of 80 for coincoin and 20 for minieo
#cleos push action eparticlectr propose '[ "coincoin", "Qme2Aoj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", "", "" ]' -p coincoin
#cleos push action eparticlectr votebyhash '[ "minieo", "Qme2Aoj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", 1, 500 ]' -p minieo
#cleos push action eparticlectr fnlbyhash  '[ "Qme2Aoj3dttrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W"]' -p coincoin
#
## TEST 4
## coincoin start 20140.000 IQ | minieo start 9899998.000 IQ
## Expected reward of 80 for coincoin, ~5 for minieo, and ~15 for beetoken
#cleos push action eparticlectr propose '[ "coincoin", "Qme88Kjwdktrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", "", "" ]' -p coincoin
#cleos push action eparticlectr votebyhash '[ "minieo", "Qme88Kjwdktrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", 1, 25 ]' -p minieo
#cleos push action eparticlectr votebyhash '[ "beetoken", "Qme88Kjwdktrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W", 1, 75 ]' -p beetoken
#cleos push action eparticlectr fnlbyhash  '[ "Qme88Kjwdktrxsor6hwgL9KcAqftLCzBsXYMp7pVufVw8W"]' -p coincoin
#cleos push action eparticlectr procrewards '[25561750]' -p coincoin
#
## TEST 4
## coincoin start 20140.000 IQ | minieo start 9899998.000 IQ
## Expected reward of 80 for coincoin, 20 for minieo, and a slash for beetoken
#cleos push action eparticlectr propose '[ "coincoin", "QmYE4tqhnJWNPxe7wBDkbq3g8gcLbheU7gxoVsf77XEKDE", "", "" ]' -p coincoin
#cleos push action eparticlectr votebyhash '[ "minieo", "QmYE4tqhnJWNPxe7wBDkbq3g8gcLbheU7gxoVsf77XEKDE", 1, 25 ]' -p minieo
#cleos push action eparticlectr votebyhash '[ "beetoken", "QmYE4tqhnJWNPxe7wBDkbq3g8gcLbheU7gxoVsf77XEKDE", 0, 15 ]' -p beetoken
#
#cleos push action eparticlectr propose '[ "coincoin", "QmYE2iqhnJWNPxe7wBDkbq3g8gcLbheU7gxoVsf77XEKDE", "", "" ]' -p coincoin
#cleos push action eparticlectr votebyhash '[ "minieo", "QmYE2iqhnJWNPxe7wBDkbq3g8gcLbheU7gxoVsf77XEKDE", 1, 25 ]' -p minieo
#cleos push action eparticlectr votebyhash '[ "beetoken", "QmYE2iqhnJWNPxe7wBDkbq3g8gcLbheU7gxoVsf77XEKDE", 0, 15 ]' -p beetoken
#
#cleos push action eparticlectr fnlbyhash  '[ "QmYE4tqhnJWNPxe7wBDkbq3g8gcLbheU7gxoVsf77XEKDE"]' -p coincoin
#cleos push action eparticlectr fnlbyhash  '[ "QmYE2iqhnJWNPxe7wBDkbq3g8gcLbheU7gxoVsf77XEKDE"]' -p coincoin
#cleos push action eparticlectr procrewards '[25562991]' -p coincoin
