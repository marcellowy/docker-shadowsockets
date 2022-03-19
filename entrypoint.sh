#!/bin/sh
./go-shadowsocks2 -s "ss://${AEAD}:${PASSWORD}@:8080" -verbose
