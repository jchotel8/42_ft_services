FROM alpine:latest

# GET PACKAGES
RUN apk update
RUN apk add openrc
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/main libc6-compat
RUN wget https://dl.grafana.com/oss/release/grafana-7.0.0.linux-amd64.tar.gz


# MOVE SOURCES FILES
RUN tar -zxvf grafana-7.0.0.linux-amd64.tar.gz
RUN rm grafana-7.0.0.linux-amd64.tar.gz
COPY defaults.ini /grafana-7.0.0/conf/defaults.ini
COPY ./telegraf.conf /etc/telegraf.conf.d
#COPY ./grafana.db /grafana-7.0.0/data/
COPY ./dashboard.json /var/lib/grafana/dashboards/default.json
COPY run.sh .

# OPENRC
RUN openrc boot

# EXPOSE PORT
EXPOSE 3000

# START DOCKER
ENTRYPOINT sh /run.sh;
