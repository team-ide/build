FROM  golang:1.24.6 AS golang

FROM gcc:6.5.0

COPY --from=golang /usr/local/go /usr/local/go

# 老版本 Debian-9 源
# RUN wget -O /etc/apt/sources.list https://static.lty.fun/%E5%85%B6%E4%BB%96%E8%B5%84%E6%BA%90/SourcesList/Debian-9-archive-qcloud.list
# 老版本 Debian-8 源
# RUN wget -O https://static.lty.fun/%E5%85%B6%E4%BB%96%E8%B5%84%E6%BA%90/SourcesList/Debian-8-Snapshot.list
COPY Debian-8-Snapshot.list /etc/apt/sources.list
RUN apt update && \
    apt install --force-yes -y unixodbc unixodbc-dev && \
    apt clean
