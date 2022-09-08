
FROM debian:buster

RUN apt-get update && \
    apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php-zip curl mariadb-client

RUN mkdir -p /var/run/ && mkdir -p /run/php/
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf_fpm/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./wp/wp_install.sh .
RUN chmod 777 wp_install.sh
ENTRYPOINT ["bash", "wp_install.sh"]
CMD ["php-fpm7.3", "-F", "-R"]
