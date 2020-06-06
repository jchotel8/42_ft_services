service mariadb setup
service mariadb start
service telegraf start

sed "s/ip_minikube/$ENV_VAR/g" origin.sql > wordpress.sql

#create a database w/ the write ID
mysql -u root -e "CREATE DATABASE wordpress"
mysql -u root wordpress < /wordpress.sql
#mysql -u root wordpress -e "UPDATE wp_options SET option_value = 'http://$ENV_VAR/wordpress' WHERE option_id IN (1,2);" #change les valeurs de siteurl et home
mysql -u root -e "CREATE USER 'user1'@'%' IDENTIFIED BY 'test123'"
mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'user1'@'%' WITH GRANT OPTION"
mysql -u root -e "FLUSH PRIVILEGES"

#keep it running
while [ 1 ]
do
    sleep 5
    if [ $(service mariadb status | grep -c started) != 1 ];
    then
        exit
    fi
    if [ $(service telegraf status | grep -c started) != 1 ];
    then
        exit
    fi
done