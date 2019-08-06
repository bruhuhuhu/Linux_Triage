#!/bin/sh
echo "*****Information On Currently Established Network Connections*****"

var1=$(netstat -nap)
localdirectory=$directory
cd $directory
logName="currentestablished.txt"
touch $logName 
echo "*****Information On Currently Established Network Connections*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "$var1"
	echo "$var1">>$logName
fi
