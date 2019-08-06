#!/bin/sh
echo "*****USER ACCOUNT PARAMETER INFORMATION*****"

var1=$(cat /etc/login.conf)
localdirectory=$directory
cd $directory
logName="useraccountparameter.txt"
touch $logName 
echo "*****USER ACCOUNT PARAMETER INFORMATION*****" >>$logName

if( "$var1" = " " );then
	echo "Error Detected"
else
#	echo "The system User Account Parameters Are: $var1"
#	echo "$var1">>$logName
fi
