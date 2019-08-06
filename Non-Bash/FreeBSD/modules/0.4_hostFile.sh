#!/bin/sh
echo "*****LOCAL SYSTEM HOST FILE INFORMATION*****"

var1=`cat /etc/hosts`
localdirectory=$directory
cd $directory
logName="localsystemhost.txt "
touch $logName 
echo "*****LOCAL SYSTEM HOST FILE INFORMATION*****" >>$logName

if [ $var1 = "" ];then
	echo "Error Detected"
else
	echo "The Entries Inside The Host File Is As Follows: \n $var1"
	echo "$var1">>$logName
fi
