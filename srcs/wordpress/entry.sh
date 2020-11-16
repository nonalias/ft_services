wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm -rf latest.tar.gz
mkdir -p /var/www/html
mv wordpress /var/www/html
cp /tmp/wp-config.php /var/www/html/wordpress
mysql -u modyhoon --password=1q2w3e4r -h mysql-service < wordpress.sql
/usr/sbin/php-fpm7
nginx -g "pid /tmp/nginx.pid; daemon off;"
