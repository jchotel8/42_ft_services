FROM alpine:latest

# GET PACKAGES
RUN apk get update
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
        php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add openrc
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# CREATING FOLDERS
RUN mkdir /www

# OPENRC BOOT
RUN openrc boot

# MOVING SOURCES FILES
COPY telegraf.conf /etc/telegraf.conf.d
COPY wordpress.tar .
RUN tar -xf wordpress.tar && rm wordpress.tar && mv wordpress www
COPY wp-config.php /www/wordpress
COPY index.html /www
COPY run.sh .

# EXPOSING PORTS
EXPOSE 5050

# START DOCKER
ENTRYPOINT sh run.sh