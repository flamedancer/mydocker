#!/usr/bin/env bash

docker run \
    -d \
    --name some-nginx \
    --network host \
    -v "${HONE}": '/root' \
    nginx:alpine
