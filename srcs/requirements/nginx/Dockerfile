FROM debian:buster
RUN apt-get update -y && apt-get install nginx -y\
 openssl -y
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/jremy.42.fr.key \
    -out /etc/ssl/certs/jremy.42.fr.pem \
    -subj "/C=FR/ST=IDF/O=42paris, /CN=jremy.42.fr"
RUN mkdir nginx_logs
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["nginx", "-g", "daemon off;"]