service influxdb start
service telegraf start

#crete database for telegraf
sleep 2
influx -execute "CREATE DATABASE telegraf"
influx -execute "CREATE USER user1 WITH PASSWORD 'test123'"

#keep it running
sleep 20
while [ 1 ]
do
    sleep 5
    if [ $(service influxdb status | grep -c started) != 1 ];
    then
        exit
    fi
    if [ $(service telegraf status | grep -c started) != 1 ];
    then
        exit
    fi
done