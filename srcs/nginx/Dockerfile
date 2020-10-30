FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add nginx
RUN apk add openrc
RUN apk add openssl
RUN apk add openssh

COPY ./nginx.sh /tmp/nginx.sh
COPY ./default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443 22

RUN sed 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' -i /etc/ssh/sshd_config
RUN echo 'root:1q2w3e4r' | chpasswd
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa

CMD ["sh","/tmp/nginx.sh"]
