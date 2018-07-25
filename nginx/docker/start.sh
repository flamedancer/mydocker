#!/usr/bin/env bash

docker run \
    -d \
    --name some-nginx \
    --network host \
    -v "${HOME}":/data \
    -v "${HOME}/mydocker/nginx/config/nginx.conf":/etc/nginx/nginx.conf \
    -v "${HOME}/mydocker/nginx/config/conf.d":/etc/nginx/conf.d \
    -v "${HOME}/mydocker/nginx/logs":/var/log/nginx \
    nginx:alpine
