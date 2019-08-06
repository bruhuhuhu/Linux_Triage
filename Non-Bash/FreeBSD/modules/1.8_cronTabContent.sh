#!/bin/sh
echo "*****Crontab Content Information*****"

var1=$(cat /etc/crontab)
localdirectory=$directory
cd $directory
logName="crontabcontent.txt"
touch $logName 
echo "*****Crontab Content Information*****" >>$logName

if ( "$var1" = " " );then
	echo "Error Detected"
else
	echo "The Crontab Contents Are As Follows: $var1"
	echo "$var1">>$logName
fi
