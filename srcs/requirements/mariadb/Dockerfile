FROM debian:buster

RUN apt-get update && \
    apt-get -y install mariadb-server mariadb-client
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:root /run/mysqld && chown -R mysql:mysql /var/lib/mysql
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf 
COPY ./conf/install_db.sh .

ENTRYPOINT [ "bash", "install_db.sh" ]
CMD ["mysqld"]
