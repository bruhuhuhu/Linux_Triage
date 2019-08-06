#!/bin/sh
echo "*****LOCAL USER GROUP INFORMATION*****"

var1=$(cat /etc/group 2>/dev/null)
localdirectory=$directory
cd $directory
logName="localusergroup.txt"
touch $logName 
echo "*****LOCAL USER GROUP INFORMATION*****" >>$logName

if ( $var1 = "" );then
	echo "Error Detected"
else
	echo "The user groups on the system are: $var1"
	echo "$var1">>$logName
fi
