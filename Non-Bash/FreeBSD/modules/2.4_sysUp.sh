#!/bin/sh
echo "*****Information On System Uptime Is As Follows*****"

var1=$(uptime)
localdirectory=$directory
cd $directory
logName="systemuptime.txt"
touch $logName 
echo "*****Information On System Uptime Is As Shown Below*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "$var1"
	echo "$var1">>$logName
fi
