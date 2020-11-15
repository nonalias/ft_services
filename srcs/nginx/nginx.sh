echo 'root:1q2w3e4r' | chpasswd

# nginx ssl connect setting
openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=KIM/CN=localhost" -keyout localhost.dev.key -out localhost.dev.crt
mv localhost.dev.crt /
mv localhost.dev.key /
chmod 600 /localhost.dev.crt /localhost.dev.key

# ssh setting
sed 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' -i /etc/ssh/sshd_config
ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa

sed -i "s/wp-service/wordpress-service/g" /etc/nginx/conf.d/default.conf

/usr/sbin/sshd

nginx -g 'pid /tmp/nginx.pid; daemon off;';
