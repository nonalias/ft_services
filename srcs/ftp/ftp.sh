mkdir -p /ftps/$USER
addgroup -g 433 -S $USER
adduser -u 431 -D -G $USER -h /ftps/$USER -s /bin/false $USER
echo "$USER:$PASSWORD" | chpasswd
chown -R $USER:$USER /ftps/$USER

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
