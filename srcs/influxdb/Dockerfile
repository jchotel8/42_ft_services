FROM alpine:latest

# ADD PACKAGES
RUN apk update
RUN apk add openrc
RUN apk add influxdb && \
	apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

# MOVE SOURCES FILES
COPY telegraf.conf /etc/telegraf.conf.d
COPY influxdb.conf /etc/influxdb.conf
COPY run.sh .

# OPENRC
RUN openrc boot

# CREATE VOLUME
VOLUME ["/var/lib/influxdb"]

# EXPOSE PORT
EXPOSE 8086

# START DOCKER
ENTRYPOINT sh /run.sh;
