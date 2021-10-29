#!/bin/bash

# kafka-topics --bootstrap-server localhost:9092 --create --topic parameters --replication-factor 1 --partitions 1

# curl -X POST -H "Content-Type: application/json" --data @resources/ratings.config http://localhost:8083/connectors

### below borrowed from https://github.com/bbejeck
# if [[ "${1}" == "" ]]; then
#   echo "Please provide the name of sql file to upload"
#   exit
# fi

# properties='"ksql.streams.auto.offset.reset":"earliest","ksql.streams.cache.max.bytes.buffering":"0"'
# while read statement; do
#   echo -e "\n$statement\n"
#   response=$(curl -X POST localhost:8088/ksql \
#        -H "Content-Type: application/vnd.ksql.v1+json; charset=utf-8" \
#        --silent \
#        -d @<(cat <<EOF
# {
#   "ksql": "$statement",
#   "streamsProperties": {$properties}
# }
# EOF
# ))
#   if [[ ! "$response" =~ "SUCCESS" ]]; then
#     echo -e "\nERROR"
#     exit 1
#   fi
# done < "$1"
# echo -e "\nSleeping 20 seconds after submitting KSQL queries\n"
# sleep 20