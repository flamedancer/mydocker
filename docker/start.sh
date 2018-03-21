#!/usr/bin/env bash

docker run \
    -d \
    --name some-nginx \
    --network host \
    -v "${HOME}":/root \
    nginx:alpine
