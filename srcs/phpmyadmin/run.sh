service php-fpm7 start
service telegraf start

php -S 0.0.0.0:5000 -t /www/

sleep 20
while [ 1 ]
do
    sleep 5
    if [ $(service php-fpm7 status | grep -c started) != 1 ];
    then
        exit
    fi
    if [ $(service telegraf status | grep -c started) != 1 ];
    then
        exit
    fi
done
    