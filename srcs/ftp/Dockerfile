FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add vsftpd

COPY ./vsftpd.conf /etc/vsftpd/

#RUN	adduser hoon --disabled-password && \
#echo hoon:hoon | chpasswd 
RUN echo root:root | chpasswd


#CMD ["vsftpd"]
