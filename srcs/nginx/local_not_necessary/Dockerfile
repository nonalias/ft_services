FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add nginx
RUN apk add openssl
RUN apk add openssh

COPY ./nginx.sh /tmp/nginx.sh
#COPY ./default.conf /etc/nginx/conf.d/default.conf
#COPY ./proxy.conf /etc/nginx/conf.d/proxy.conf

EXPOSE 80 443 22

CMD ["sh","/tmp/nginx.sh"]
