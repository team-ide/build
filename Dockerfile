FROM  golang:1.20.14 AS golang

FROM gcc:8.3.0

COPY --from=golang /usr/local/go /usr/local/go

RUN apt update
RUN apt install -y unixodbc unixodbc-dev
RUN apt clean