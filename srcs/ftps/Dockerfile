FROM alpine:latest

# GET PACKAGES
RUN apk add vsftpd openrc openssl
RUN apk add telegraf --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
RUN openrc boot

# MOVE SOURCES FILES
COPY telegraf.conf /etc/telegraf.conf.d
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
COPY run.sh .
RUN chmod +x run.sh

# CHANGE IP ADDRESS
ARG var
RUN echo pasv_address=$var >> /etc/vsftpd/vsftpd.conf

#ADMIN AND PATH FOR UNREGISTERED
RUN adduser -D admin
RUN echo "admin:admin" | chpasswd
RUN mkdir -p var/run/vsftpd/empty

#SSL FILE
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=FR/ST=75/L=Paris/O=42/CN=thgermai' -keyout /etc/ssl/private/key.pem -out /etc/ssl/private/cert.pem

#USER FILE
RUN mkdir /home/admin/ftp
RUN chown nobody:nogroup /home/admin/ftp 
RUN chmod a-w /home/admin/ftp
RUN mkdir /home/admin/ftp/files
RUN chown admin:admin /home/admin/ftp/files
RUN echo "admin" | tee -a /etc/vsftpd/vsftpd.userlist  #rajouter admin a la liste

# EXPOSE PORT
EXPOSE 21 30000

# START DOCKER
ENTRYPOINT sh run.sh