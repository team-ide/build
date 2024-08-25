
## amd64

```shell

/usr/local/amd64-go/bin/go env -w GOPROXY=https://goproxy.cn,direct
/usr/local/amd64-go/bin/go mod tidy

export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:/usr/local/include/c++/x86_64-linux-gnu/
export PATH=/usr/lib/x86_64-linux-gnu/:/usr/local/include/c++/x86_64-linux-gnu/


CC=/usr/bin/x86_64-linux-gnu-gcc \
CXX=/usr/bin/x86_64-linux-gnu-g++ \
CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -o build-amd64 .
```

## arm64

```shell

/usr/local/go/bin/go env -w GOPROXY=https://goproxy.cn,direct
/usr/local/go/bin/go mod tidy
/usr/local/arm64-go/bin/go env -w GOPROXY=https://goproxy.cn,direct
/usr/local/arm64-go/bin/go mod tidy

export LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu/:/usr/local/include/c++/aarch64-linux-gnu/
export PATH=/usr/lib/aarch64-linux-gnu/:/usr/local/include/c++/aarch64-linux-gnu/


export LD_LIBRARY_PATH=$(pwd)/lib/shentong/arm64/

CC=/usr/bin/aarch64-linux-gnu-gcc \
CXX=/usr/bin/aarch64-linux-gnu-g++ \
CGO_ENABLED=1 GOOS=linux GOARCH=arm64 \
/usr/local/go/bin/go \
build .
```
