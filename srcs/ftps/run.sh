service telegraf start

vsftpd /etc/vsftpd/vsftpd.conf &> /dev/null & #& tourne en fond (permet de faire de d'autres actions en simultané)

# keep it running
sleep 20
while [ 1 ]
do
    sleep 5
    if [ $(service telegraf status | grep -c "started") != 1 ]; then
        exit
    fi 
done