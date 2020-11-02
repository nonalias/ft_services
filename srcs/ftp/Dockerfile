FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add vsftpd

COPY ./vsftpd.conf /etc/vsftpd/
COPY ./ftp.sh /tmp/ftp.sh

ENV	USER=modyhoon
ENV	PASSWORD=1q2w3e4r


EXPOSE 21


CMD ["sh", "/tmp/ftp.sh"]
