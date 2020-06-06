FROM alpine:latest

# GET PACKAGES
RUN apk update &&\
    apk add mysql mysql-client openssh openrc
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted    

# MOVE SOURCES FILES
COPY telegraf.conf /etc/telegraf.conf.d
COPY my.cnf /etc/mysql/
COPY run.sh .
COPY origin.sql .

# OPENRC
RUN openrc boot
RUN rc-update add sshd

# CREATE ENV VARIABLE
ARG var
ENV ENV_VAR=$var

# CREATE VOLUME
VOLUME ["/var/lib/mysql"]

# EXPOSE PORT
EXPOSE 3306

# START DOCKER
ENTRYPOINT sh ./run.sh;