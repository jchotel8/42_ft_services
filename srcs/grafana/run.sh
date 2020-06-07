service telegraf start

cd grafana-6.6.0/bin
./grafana-server &> /dev/null &

#keep it running
sleep 20
while [ 1 ]
do
    sleep 5
    if [ $(service telegraf status | grep -c started) != 1 ];
    then
        exit
    fi
done
