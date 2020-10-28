FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add mysql mysql-client

EXPOSE 3306

ENTRYPOINT ["mysql"]
