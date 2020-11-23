#mkdir -p /var/www/html/phpmyadmin/tmp
#adduser -D -g www www
#chown -R www:www /var/www/html
mkdir -p /var/www/html
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
tar -xvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm -f phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages phpmyadmin
mv /phpmyadmin/ /var/www/html/
cp /tmp/config.inc.php /var/www/html/phpmyadmin/
mkdir -p /var/www/html/phpmyadmin/tmp
chmod -R ugo+w /var/www/html/phpmyadmin/tmp
/usr/sbin/php-fpm7
nginx -g 'pid /tmp/nginx.pid; daemon off;'
