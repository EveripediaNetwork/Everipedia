BOOTSTRAP=1 # 1 if chain bootstrapping (bios, system contract, etc.) is needed, else 0
MAIN_ACCOUNT=eosio
ARTICLE_CONTRACT=eparticlectr
TOKEN_CONTRACT=everipediaiq
FEE_ACCOUNT=epiqtokenfee

function balance {
    cleos get table $TOKEN_CONTRACT $1 accounts | jq ".rows[0].balance" | tr -d '"' | awk '{print $1}'
}

# Source: http://tldp.org/LDP/abs/html/debugging.html
#######################################################################
assert ()                 #  If condition false,
{                         #+ exit from script
                          #+ with appropriate error message.
  E_PARAM_ERR=98
  E_ASSERT_FAILED=99


  if [ -z "$2" ]          #  Not enough parameters passed
  then                    #+ to assert() function.
    return $E_PARAM_ERR   #  No damage done.
  fi

  lineno=$2

  if [ ! $1 ]
  then
    echo "Assertion failed:  \"$1\""
    echo "File \"$0\", line $lineno"    # Give name of file and line number.
    exit $E_ASSERT_FAILED
  # else
  #   return
  #   and continue executing the script.
  fi
} # Insert a similar assert() function into a script you need to debug.
#######################################################################


# Don't allow tests on mainnet
CHAIN_ID=$(cleos get info | jq ".chain_id")
if [ $CHAIN_ID = "aca376f206b8fc25a6ed44dbdc66547c36c6c33e3a119ffbeaef943642f0e906" ]; then
    >&2 echo "Cannot run test on mainnet"
    exit 1
fi

# Bootstrap new chain
cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
cleos create account eosio eosio.token EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV 
cleos set contract eosio.token ~/eos/build/contracts/eosio.token/
cleos push action eosio.token create '[ "eosio", "10000000000.0000 EOS" ]' -p eosio.token
cleos push action eosio.token issue '[ "eosio", "1000000000.0000 EOS", "memo" ]' -p eosio
cleos set contract eosio ~/eos/build/contracts/eosio.system/ -p eosio

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


# Create new accounts
cleos system newaccount $MAIN_ACCOUNT $TOKEN_CONTRACT EOS6XeRbyHP1wkfEvFeHJNccr4NA9QhnAr6cU21Kaar32Y5aHM5FP --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer
cleos system newaccount $MAIN_ACCOUNT $ARTICLE_CONTRACT EOS8dYVzNktdam3Vn31mSXcmbj7J7MzGNudqKb3MLW1wdxWJpEbrw --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer
cleos system newaccount $MAIN_ACCOUNT eptestusersa EOS6HfoynFKZ1Msq1bKNwtSTTpEu8NssYMcgsy6nHqhRp3mz7tNkB --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer
cleos system newaccount $MAIN_ACCOUNT eptestusersb EOS68s2PrHPDeGWTKczrNZCn4MDMgoW6SFHuTQhXYUNLT1hAmJei8 --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer
cleos system newaccount $MAIN_ACCOUNT eptestusersc EOS7LpZDPKwWWXgJnNYnX6LCBgNqCEqugW9oUQr7XqcSfz7aSFk8o --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer
cleos system newaccount $MAIN_ACCOUNT eptestusersd EOS6KnJPV1mDuS8pYuLucaWzkwbWjGPeJsfQDpqc7NZ4F7zTQh4Wt --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer
cleos system newaccount $MAIN_ACCOUNT eptestuserse EOS76Pcyw1Hd7hW8hkZdUE1DQ3UiRtjmAKQ3muKwidRqmaM8iNtDy --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer
cleos system newaccount $MAIN_ACCOUNT eptestusersf EOS7jnmGEK9i33y3N1aV29AYrFptyJ43L7pATBEuVq4fVXG1hzs3G --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer
cleos system newaccount $MAIN_ACCOUNT eptestusersg EOS7vr4QpGP7ixUSeumeEahHQ99YDE5jiBucf1B2zhuidHzeni1dD --stake-cpu "1 EOS" --stake-net "1 EOS" --buy-ram-kbytes 16 --transfer

# Deploy contracts
cleos set contract $TOKEN_CONTRACT ~/eos/build/contracts/everipediaiq/
cleos set contract $ARTICLE_CONTRACT ~/eos/build/contracts/eparticlectr/

# Create and issue token
cleos push action $TOKEN_CONTRACT create "[\"$TOKEN_CONTRACT\", \"100000000000.000 IQ\"]" -p $TOKEN_CONTRACT@active
cleos push action $TOKEN_CONTRACT issue "[\"$TOKEN_CONTRACT\", \"10000000000.000 IQ\", \"initial supply\"]" -p $TOKEN_CONTRACT@active

# No transfer fees for privileged accounts
OLD_BALANCE1=$(balance eptestusersa)
OLD_BALANCE2=$(balance eptestusersb)
OLD_BALANCE3=$(balance eptestusersc)
OLD_BALANCE4=$(balance eptestusersd)
OLD_BALANCE5=$(balance eptestuserse)
OLD_BALANCE6=$(balance eptestusersf)
OLD_BALANCE7=$(balance eptestusersg)
OLD_FEE_BALANCE=$(balance $FEE_ACCOUNT)

cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestuser11\", \"10000.000 IQ\"]"
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestuser12\", \"10000.000 IQ\"]"
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestuser13\", \"10000.000 IQ\"]"
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestuser14\", \"10000.000 IQ\"]"
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestuser15\", \"10000.000 IQ\"]"
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestuser16\", \"10000.000 IQ\"]"
cleos push action $TOKEN_CONTRACT transfer "[\"$TOKEN_CONTRACT\", \"eptestuser17\", \"10000.000 IQ\"]"

NEW_BALANCE1=$(balance eptestuser11)
NEW_BALANCE2=$(balance eptestuser12)
NEW_BALANCE3=$(balance eptestuser13)
NEW_BALANCE4=$(balance eptestuser14)
NEW_BALANCE5=$(balance eptestuser15)
NEW_BALANCE6=$(balance eptestuser16)
NEW_BALANCE7=$(balance eptestuser17)
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
