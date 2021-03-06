#!/usr/bin/env bash

docker run \
    -d \
    --name some-elastic \
    -p 9200:9200 \
    -p 9300:9300 \
    -e "discovery.type=single-node" \
    elasticsearch:5.6.10-alpine

