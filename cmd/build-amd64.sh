#!/bin/bash

set -ex;

# 移至脚本目录
cd /build

echo `pwd`

echo "set go env GOFLAGS"
/usr/local/go/bin/go env -w GOFLAGS="-buildvcs=false"

/usr/local/go/bin/go mod tidy

echo "build start"

CGO_ENABLED=1 GOOS=linux GOARCH=amd64 /usr/local/go/bin/go \
build -ldflags "-s" -o /build/build-linux-amd64 .

echo "build success"

echo "build check version"

export LD_LIBRARY_PATH=$(pwd)/lib/shentong/amd64/

/build/build-linux-amd64 -v