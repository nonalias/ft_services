#!/bin/bash

#PASV_ADDRESS=$(ip -o -4 addr list $PASV_ADDRESS_INTERFACE | head -n1 | awk '{print $4}' | cut -d/ -f1)

addgroup -g 433 -S $USER
adduser -u 431 -D -G $USER -h /home/vsftpd/$USER -s /bin/false  $USER
echo "$USER:$PASSWORD" | /usr/sbin/chpasswd
chown -R $USER:$USER /home/vsftpd/$USER


# Update the vsftpd.conf according to env variables
#sed -i "s/anonymous_enable=YES/anonymous_enable=NO/" /etc/vsftpd/vsftpd.conf
#sed -i "s/pasv_enable=.*/pasv_enable=$PASV_ENABLE/" /etc/vsftpd/vsftpd.conf
#sed -i "s/pasv_address=.*/pasv_address=$PASV_ADDRESS/" /etc/vsftpd/vsftpd.conf
#sed -i "s/pasv_addr_resolve=.*/pasv_addr_resolve=$PASV_ADDR_RESOLVE/" /etc/vsftpd/vsftpd.conf
#sed -i "s/pasv_max_port=.*/pasv_max_port=$PASV_MAX_PORT/" /etc/vsftpd/vsftpd.conf
#sed -i "s/pasv_min_port=.*/pasv_min_port=$PASV_MIN_PORT/" /etc/vsftpd/vsftpd.conf


# Run the vsftpd server
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
