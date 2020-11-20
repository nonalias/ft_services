FROM alpine:latest

RUN apk add grafana --repository=http://dl-3.alpinelinux.org/alpine/edge/testing/


EXPOSE 3000
COPY start.sh /tmp/

ENTRYPOINT ["sh", "/tmp/start.sh"]
