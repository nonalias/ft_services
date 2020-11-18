FROM alpine:latest

RUN apk update
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/

COPY ./telegraf.conf /etc/telegraf/

ENTRYPOINT ["/usr/bin/telegraf"]
