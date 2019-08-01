#!/bin/bash
#2.8 Cron Job List Checker Starts Here

echo -e "\e[31;43m*****Cron Job Content Information*****\e[0m"
fileName27=crontabContent_$now.txt
fullPath27=$newDir/$fileName27
#touch fullPath27
echo "*****Cron Job List Checker*****" >> $fullPath27
cronListVar=$(ls /etc/cron.* || echo "NONE")
if [ "$cronListVar" == "NONE" ]
then 
     	echo "File Cannot Be Found"
else
    	echo "The Cron Configuration Parameter are as follows: "
        echo "$cronListVar"
        echo "$cronListVar" >>$fullPath27
fi