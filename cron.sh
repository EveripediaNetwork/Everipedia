#!/bin/bash

date
PATH=$PATH:/usr/local/eosio/bin/

# unlock wallet with evrpdcronjob keys
cleos wallet unlock -n epcron --password PW5JXLRwZABHKXUypDUNVEu7BzAXKGu4xweFEC7UoExcdE6gK2hvH

# procrewards for last 20 periods
NOW=$(date +%s)
CURRENT_PERIOD=$(bc <<< "$NOW / 1800")
for i in $(seq 1 20); do
    PERIOD=$(bc <<< "$CURRENT_PERIOD - $i")
    cleos push action eparticlectr procrewards "[$PERIOD]" -p evrpdcronjob
done

# finalize for 50 most recent proposals
MORE="true"
MOST_RECENT=0
while [ $MORE = "true" ]; do
    PROPS_JSON=$(cleos get table eparticlectr eparticlectr propstbl -L $MOST_RECENT -l 500)
    MOST_RECENT=$(echo $PROPS_JSON | jq ".rows[-1].id" | tr -d '"')
    MORE=$(echo $PROPS_JSON | jq ".more")
done
for i in $(seq 1 50); do
    id=$(bc <<< "$MOST_RECENT - $i")
    cleos push action eparticlectr finalize "[$id]" -p evrpdcronjob
done

# purge old votes
HASHES=$(cleos get table eparticlectr eparticlectr votestbl -l 500 | jq ".rows[] | .proposed_article_hash" | tr -d '"')
for IPFS in $HASHES; do
    cleos push action eparticlectr oldvotepurge "[\"$IPFS\", 100]" -p evrpdcronjob
done

