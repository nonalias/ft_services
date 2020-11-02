mkdir -p ftps/$USER
adduser modyhoon --disabled-password
echo "$USER:$PASSWORD" | chpasswd
chown $USER:$USER ftps/$USER

exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
