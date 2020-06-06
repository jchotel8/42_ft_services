FROM alpine:latest

# GET PACKAGES
RUN apk get update && apk get upgrade && \
	apk add nginx php7-fpm openrc openssl openssh sudo
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# CREATE ADMIN USER
RUN adduser -D "admin"
RUN echo "admin:test123" | chpasswd

# CREATE FOLDERS
RUN mkdir var/www/http
RUN mkdir var/www/https
RUN mkdir -p /run/nginx

# MOVE SOURCES FILES
COPY telegraf.conf /etc/telegraf.conf.d
COPY srcs/ var/www/http/
COPY run.sh .
RUN mv var/www/http/default.conf /etc/nginx/conf.d/

# OPENRC
RUN openrc boot

# CREATE SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=FR/ST=92/L=Paris/O=42/CN=cbertola' -keyout /etc/nginx/ssl/key.pem -out /etc/nginx/ssl/cert.crt

# EXPOSE PORTS
EXPOSE 80 443 22

# START DOCKER
ENTRYPOINT sh run.sh