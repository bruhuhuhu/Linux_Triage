#!/bin/sh
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION*****"

var1=$(zdump /etc/localtime)
localdirectory=$directory
cd $directory
logName="systemlocaltimezone.txt"
touch $logName 
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION*****" >>$logName

if ( $var1 ="" );then
	echo "Error Detected"
else
	echo "The Local System Timezone is $var1"
	echo "$var1">>$logName
fi
