#!/bin/sh
echo "*****LOCAL USER ACCOUNT INFORMATION*****"

var1=$(cat /etc/passwd)
localdirectory=$directory
cd $directory
logName="localuseraccount.txt"
touch $logName 
echo "*****LOCAL USER ACCOUNT INFORMATION*****" >>$logName

if [ $var1 = "" ];then
	echo "Error Detected"
else
	echo "The Local User Account Are: \n $var1"
	echo "$var1">>$logName
fi
