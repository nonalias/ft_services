FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add nginx
RUN apk add openrc
RUN apk add openssl
RUN apk add openssh

COPY ./nginx.sh /tmp/nginx.sh
# COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
# COPY ./default_80.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443
# EXPOSE 443

ENTRYPOINT ["sh","/tmp/nginx.sh"]
