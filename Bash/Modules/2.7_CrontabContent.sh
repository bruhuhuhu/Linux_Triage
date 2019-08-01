#!/bin/bash
#2.7 Crontab Content Checker Starts Here

echo -e "\e[31;43m*****Crontab Content Information*****\e[0m"
fileName26=crontabContent_$now.txt
fullPath26=$newDir/$fileName26
#touch fullPath26
echo "*****Crontab Content Checker*****" >> $fullPath26
if [ -f "/etc/crontab" ]
then
    	cronTabVar=$(cat /etc/crontab || echo "NONE" )
        if [ "$cronTabVar" == "NONE" ]
        then 
             	echo "File Not Found"
        else
            	echo "The local Crontab is as follows: "
                echo "$cronTabVar"
                echo "$cronTabVar">>$fullPath26
        fi

else
    	echo "File Cannot Be Found"
fi