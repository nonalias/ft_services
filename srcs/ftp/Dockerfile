FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add vsftpd

ENV	USER=modyhoon
ENV	PASSWORD=1q2w3e4r

ENV	FTP_USER=admin \
	FTP_PASS=admin \
	PASV_ENABLE=YES \
	PASV_ADDRESS= \
	PASV_ADDRESS_INTERFACE=eth0 \
	PASV_ADDR_RESOLVE=NO \
	PASV_MIN_PORT=21100 \
	PASV_MAX_PORT=21104

RUN mkdir -p /home/vsftpd/
#RUN chown -R ftp:ftp /home/vsftpd/

COPY ./vsftpd.conf /etc/vsftpd/
COPY ./ftp.sh /tmp/ftp.sh
COPY ./vsftpd.pem /etc/ssl/private/vsftpd.pem


EXPOSE 21

CMD ["sh", "/tmp/ftp.sh"]
