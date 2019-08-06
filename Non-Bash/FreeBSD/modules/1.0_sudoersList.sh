#!/bin/sh
echo "*****SUDOERS LIST INFORMATION*****"

var1=$(cat /etc/sudoers 2>/dev/null || echo "NONE")
localdirectory=$directory
cd $directory
logName="sudoerslist.txt "
touch $logName 
echo "*****SUDOERS LIST INFORMATION*****" >>$logName

if [ $var1 = "NONE" ];then
	echo "Error Detected"
else
	echo "The users with sudo privilege is as shown \n $var1"
	echo "$var1">>$logName
fi
