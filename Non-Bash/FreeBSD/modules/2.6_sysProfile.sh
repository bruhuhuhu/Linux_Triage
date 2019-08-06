#!/bin/sh
echo "*****System Profile is Listed Here*****"

var1=$(cat /etc/profile)
localdirectory=$directory
cd $directory
logName="profile.txt"
touch $logName 
echo "*****System Profile*****" >>$logName

if ( "$var1" = " " );then
	echo "Error Detected"
else
	echo "$var1"
	echo "$var1">>$logName
fi
