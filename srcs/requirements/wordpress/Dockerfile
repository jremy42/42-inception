

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

#ENTRYPOINT ["bash", "wp_install.sh"]

# FROM debian:buster
# RUN apt-get update -y && apt-get install php7.3 php-fpm php7.3-common curl php-zip php-mysqli mariadb-client -y
# RUN mkdir -p /var/run/ && mkdir -p /run/php/

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# COPY ./conf_fpm/www.conf /etc/php/7.3/fpm/pool.d/.
# #COPY ./wp/wp-config.php /var/tmp/.
# COPY ./wp/wp_install.sh .
# RUN chmod 777 wp_install.sh

# ENTRYPOINT ["./wp_install.sh"]

# FROM debian:buster
# RUN apt-get update -y && apt-get install php7.3 php-fpm zip wget -y
# RUN mkdir -p /var/www/html && cd /var/www/html && wget https://wordpress.org/wordpress-6.0.1.zip && unzip wordpress-6.0.1.zip && mv wordpress jremy.42.fr
# RUN chown -R www-data:www-data /var/www/*;
# RUN service php7.3-fpm start
# EXPOSE 9000
# COPY ./conf/wp-config.php /var/www/html/jremy.42.fr/.
# COPY ./conf_fpm/www.conf /etc/php/7.3/fpm/pool.d/.

# CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
