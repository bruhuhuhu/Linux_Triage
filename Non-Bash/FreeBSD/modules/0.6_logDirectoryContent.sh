#!/bin/sh
echo "*****LOCAL SYSTEM LOG FILE INFORMATION*****"

var1=`ls -l /var/log`
localdirectory=$directory
cd $directory
logName="logdirectory.txt "
touch $logName 
echo "*****LOCAL SYSTEM LOG FILE INFORMATION*****" >>$logName

if [ $var1 = "" ];then
	echo "Error Detected"
else
	echo "The content of the log directory is: \n $var1"
	echo "$var1">>$logName
fi
