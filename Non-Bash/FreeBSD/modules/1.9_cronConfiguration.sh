#!/bin/sh
echo "*****Cron Configuration Information*****"

var1=$(ls /etc/cron.*)
localdirectory=$directory
cd $directory
logName="crontabconfiguration.sh"
touch $logName 
echo "*****Cron Configuration Information*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "The cron configuration is as shown $var1"
	echo "$var1">>$logName
fi

