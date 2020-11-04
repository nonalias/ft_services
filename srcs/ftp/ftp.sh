mkdir -p /home/vsftpd/$USER
addgroup -g 433 -S $USER
adduser -u 431 -D -G $USER -h /home/vsftpd/$USER -s /bin/false $USER
echo "$USER:$PASSWORD" | chpasswd
chown -R $USER:$USER /home/vsftpd/$USER

/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
