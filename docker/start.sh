#!/usr/bin/env bash

docker run \
    -d
    --name some-nginx \
    --net:host \
    -v "${HONE}": '/root' \
    nginx:alpine
