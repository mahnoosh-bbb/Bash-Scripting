ping -c 2 8.8.8.8
RET=$(echo $?)
if [ $RET ==  "0" ]; then
echo "Cron_BK 1"  | curl --data-binary @- http://192.168.6.121:9091/metrics/job/BK/instance/192.168.6.121/backupdb/
else
echo "Cron_BK 0"  | curl --data-binary @- http://192.168.6.121:9091/metrics/job/BK/instance/192.168.6.121/backupdb/

fi
