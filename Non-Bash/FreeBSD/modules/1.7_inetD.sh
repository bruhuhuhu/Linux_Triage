#!/bin/sh
echo "*****inetd Configuration Information*****"

var1=$(cat /etc/inetd.conf)
localdirectory=$directory
cd $directory
logName="inetdcontent.txt"
touch $logName 
echo "*****inetd Configuration Information*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "The inet configuration are as follows: $var1"
	echo "$var1">>$logName
fi
