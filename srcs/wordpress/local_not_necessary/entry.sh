wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm -rf latest.tar.gz
mkdir -p /var/www/html
mv wordpress /var/www/html
cp /tmp/wp-config.php /var/www/html/wordpress

/usr/sbin/php-fpm7
nginx -g "pid /tmp/nginx.pid; daemon off;"
