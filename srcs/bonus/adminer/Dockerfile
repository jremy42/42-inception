FROM debian:buster

RUN apt-get update && \
    apt-get -y install php7.3-fpm php7.3-common php7.3-mysql php-zip curl
RUN curl -fsSL "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php" -o index.php
CMD	[ "php", "-S", "[::]:8080" ]
