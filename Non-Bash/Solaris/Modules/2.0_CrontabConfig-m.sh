#!/bin/sh
echo "*****Cron Configuration Information *****"

internalDirectory=$directory
cd $directory
touch crontabconfiguration.txt
echo "*****Cron Configuration Information *****" 
>>crontabconfiguration.txt  

var1=`ls /etc/cron.*`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Cron configuration parameter is as follows: \n $var1"
	echo "$var1">>crontabconfiguration.txt
fi
