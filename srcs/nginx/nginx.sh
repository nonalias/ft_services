openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=KIM/CN=localhost" -keyout localhost.dev.key -out localhost.dev.crt
mv localhost.dev.crt /
mv localhost.dev.key /
chmod 600 /localhost.dev.crt /localhost.dev.key

/usr/sbin/sshd

nginx -g 'pid /tmp/nginx.pid; daemon off;';
