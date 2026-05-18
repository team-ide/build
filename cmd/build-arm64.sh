#!/bin/sh

set -ex;

# 移至脚本目录
cd /build

currentDir=$(pwd)
echo "当前目录：$currentDir"

echo "set go env GOFLAGS"
go env -w GOFLAGS="-buildvcs=false"

go mod tidy

echo "build start"

CGO_ENABLED=1 GOOS=linux GOARCH=arm64 CGO_CFLAGS="-D_LARGEFILE64_SOURCE" go \
build -ldflags "-s" -o /build/build-linux-arm64 .

echo "build success"

echo "build check version"

export LD_LIBRARY_PATH="$currentDir/lib/shentong/arm64/"

/build/build-linux-arm64 -v
