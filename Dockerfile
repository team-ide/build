FROM  golang:1.20.14 AS golang

FROM gcc:7.3.0

COPY --from=golang /usr/local/go /usr/local/go

# 老版本 Debian-9 使用 腾讯源 其它版本需要注释掉
RUN wget -O /etc/apt/sources.list https://static.lty.fun/%E5%85%B6%E4%BB%96%E8%B5%84%E6%BA%90/SourcesList/Debian-9-archive-qcloud.list
RUN apt update
RUN apt install -y unixodbc unixodbc-dev
RUN apt clean
