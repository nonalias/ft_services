FROM alpine:latest

RUN apk update
RUN apk add vim
RUN apk add nginx \
        php7 \
        php7-bcmath \
        php7-ctype \
        php7-curl \
        php7-fpm \
        php7-gd \
        php7-iconv \
        php7-intl \
        php7-json \
        php7-mbstring \
        php7-mcrypt \
        php7-mysqlnd \
        php7-mysqli \
        php7-opcache \
        php7-openssl \
        php7-pdo \
        php7-pdo_mysql \
        php7-pdo_pgsql \
        php7-pdo_sqlite \
        php7-phar \
        php7-posix \
        php7-session \
        php7-soap \
        php7-xml \
        php7-zip

EXPOSE 5000
COPY entry.sh /tmp/entry.sh
COPY default.conf /etc/nginx/conf.d/

RUN mkdir -p /var/www/html
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN tar -xvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN rm -f phpMyAdmin-5.0.2-all-languages.tar.gz
RUN mv phpMyAdmin-5.0.2-all-languages phpmyadmin
RUN mv /phpmyadmin /var/www/html/
COPY config.inc.php /var/www/html/phpmyadmin

ENTRYPOINT ["sh", "/tmp/entry.sh"]
