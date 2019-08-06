#!/bin/sh
echo "*****Secure TTY Parameters Information*****"

var1=$(cat /etc/securetty 2>/dev/null)
localdirectory=$directory
cd $directory
logName="secureTTY.txt"
touch $logName 
echo "*****Secure TTY Parameters Information*****" >>$logName

if ( "$var1" = " " );then
	echo "Error Detected"
else
	echo "The Secure TTY parameters are as follows: $var1"
	echo "$var1">>$logName
fi
