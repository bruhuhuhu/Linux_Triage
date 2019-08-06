#!/bin/sh
echo "*****SYSTEM ENVIRONMENT PROFILE INFORMATION*****"

var1=$(cat /etc/profile 2>/dev/null)
localdirectory=$directory
cd $directory
logName="systemenvironment.txt "
touch $logName 
echo "*****SYSTEM ENVIRONMENT PROFILE INFORMATION*****" >>$logName

if ( $var1 = "" );then
	echo "Error Detected"
else
	echo "The local system environment is as follow: $var1"
	echo "$var1">>$logName
fi
