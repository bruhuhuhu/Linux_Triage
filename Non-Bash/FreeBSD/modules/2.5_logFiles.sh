#!/bin/sh
echo "*****All System Log Files Are Listed Here*****"

var1=$(ls /var/log/ 2> /dev/null)
localdirectory=$directory
cd $directory
logName="loglist.txt"
touch $logName 
echo "*****All System Log Files Are As Listed Below*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "$var1"
	echo "$var1">>$logName
fi
