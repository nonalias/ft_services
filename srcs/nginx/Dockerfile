FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add nginx
RUN apk add openrc
RUN apk add openssl

COPY ./nginx.sh /tmp/nginx.sh
# COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

ENTRYPOINT ["sh","/tmp/nginx.sh"]
# CMD /bin/sh
