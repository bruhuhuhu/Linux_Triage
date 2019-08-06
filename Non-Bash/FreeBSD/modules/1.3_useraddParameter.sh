#!/bin/sh
echo "*****USERADD PARAMETER INFORMATION*****"

var1=$(cat /etc/default/useradd)
localdirectory=$directory
cd $directory
logName="useraddparameter.txt "
touch $logName 
echo "*****USERADD PARAMETER INFORMATION*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "The UserAdd Parameter Configurations Are: $var1"
	echo "$var1">>$logName
fi
