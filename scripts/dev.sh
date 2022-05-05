#!/bin/sh

docker run \
    -p 80:80 \
    -v $(pwd)/pages:/usr/src/pages \
    custom_caddy:1.0
