FROM  golang:1.20.14 AS golang

FROM gcc:14.2.0

COPY --from=golang /usr/local/go /usr/local/go

RUN apt update
RUN apt install -y unixodbc unixodbc-dev
RUN apt clean

# docker build --platform=linux/amd64 -t teamide/build-go-gcc:amd64-1.22.6-14.2.0 .
# docker run --name build-amd64 -it -v /d/Code/:/code teamide/build-go-gcc:amd64-1.22.6-14.2.0 bash
# /usr/local/go/bin/go env -w GOPROXY=https://goproxy.cn,direct
# /usr/local/go/bin/go mod tidy
# CGO_ENABLED=1 GOOS=linux GOARCH=amd64 /usr/local/go/bin/go build -o build-amd64 .
# export LD_LIBRARY_PATH=$(pwd)/lib/shentong/amd64/
# ./build-amd64


# docker build -t teamide/build-go-gcc:arm64-1.22.6-14.2.0 .
# docker run --name build-arm64 -it -v /d/Code/:/code teamide/build-go-gcc:arm64-1.22.6-14.2.0 bash
# /usr/local/go/bin/go env -w GOPROXY=https://goproxy.cn,direct
# /usr/local/go/bin/go mod tidy
# CGO_ENABLED=1 GOOS=linux GOARCH=arm64 /usr/local/go/bin/go build -o build-arm64 .
# export LD_LIBRARY_PATH=$(pwd)/lib/shentong/arm64/
# ./build-arm64
