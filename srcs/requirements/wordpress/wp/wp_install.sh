#!/bin/bash 

if [ ! -f /var/www/html/wp-config.php ]; then
    until mysqladmin -hmariadb -u${MYSQL_USER} -p${MYSQL_USER_PASSWORD} ping; do
        sleep 2 && echo -e "\e[1;31m can't connect to database"
    done
        echo -e "\e[1;32m connect to database ok"
        mkdir -p /var/www/html
        echo -e "\e[1;32m Dir /var/www/html create"
        #mv var/tmp/wp-config.php var/www/html/wp-config.php
        echo -e "\e[1;32m mv config wp-config.php"
        wp core download --path="/var/www/html" --locale=fr_FR --skip-content --allow-root ;
        echo -e "\e[1;32m Download wp done"
        cd /var/www/html;
        echo -e "\e[1;34m create database"
        wp config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_USER_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
        echo -e "\e[1;34m install wordpress"
        wp core install --allow-root --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN_LOGIN} --admin_password=${WORDPRESS_ADMIN_MP} --admin_email=${WORDPRESS_ADMIN_EMAIL} --skip-email
        echo -e "\e[1;32m install done"
        wp user create $WORDPRESS_USR_LOGIN $WORDPRESS_USR_EMAIL --role=author --user_pass=$WORDPRESS_USR_MP--allow-root
        wp theme install astra --activate --allow-root
    fi
echo -e "\e[1;32m wordpress start"
exec "$@"