mkdir -p /var/www/html/phpmyadmin/tmp
adduser -D -g www www
chown -R www:www /var/www/html
/usr/sbin/php-fpm7
nginx -g 'pid /tmp/nginx.pid; daemon off;'
