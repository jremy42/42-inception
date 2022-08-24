#!/bin/bash

if [ ! -d /var/lib/mysql/${MYSQL_DATABASE} ]; then
    mysqld&
    until mysqladmin ping; do
        sleep 2
    done
    cd /root/
    mysql -e "CREATE DATABASE ${MYSQL_DATABASE};"
    mysql -e "CREATE USER '${MYSQL_ADMIN}'@'%' IDENTIFIED BY '${MYSQL_ADMIN_PASSWORD}';"
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_ADMIN}'@'%';"
    mysql -e "FLUSH PRIVILEGES;"
    mysql -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_USER_PASSWORD}';"
    mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
    mysql -e "FLUSH PRIVILEGES;"
    mysql -e "DELETE FROM mysql.user WHERE user=''"
    mysql -e "DELETE FROM mysql.user WHERE user='root'"
    mysql -e "FLUSH PRIVILEGES;"
    killall mysqld
fi
exec "$@"