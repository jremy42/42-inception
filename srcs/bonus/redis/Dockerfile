FROM debian:buster

RUN apt-get update && \
    apt-get -y install lsb-release redis-server
COPY ./conf/redis.conf /etc/redis/redis.conf
EXPOSE 6379

ENTRYPOINT ["redis-server", "--protected-mode no"]
