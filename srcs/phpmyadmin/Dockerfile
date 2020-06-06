FROM alpine:latest

# GET PACKAGES
RUN apk get update && apk get upgrade
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
        php7-zlib php7-curl php7-mbstring php7-json php7-session \
        mysql-client openrc
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# CREATING FOLDERS
RUN mkdir /www

# OPENRC
RUN openrc boot

# MOVING SOURCES FILES
COPY telegraf.conf /etc/telegraf.conf.d
COPY phpMyAdmin.tar .
RUN tar -xvf phpMyAdmin.tar && rm phpMyAdmin.tar
RUN mv phpMyAdmin-4.9.0.1-all-languages /www/phpmyadmin
COPY config.inc.php /www/phpmyadmin
COPY index.html /www/
COPY run.sh .


# EXPOSING PORTS
EXPOSE 5000

# START DOCKER
ENTRYPOINT sh run.sh