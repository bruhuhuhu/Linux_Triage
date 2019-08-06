#!/bin/sh
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION*****"

var1=$(zdump /usr/share/zoneinfo 2>/dev/null)
localdirectory=$directory
cd $directory
logName="systemlocaltimezone2.txt"
touch $logName 
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION*****" >>$logName

if ( "$var1"="" );then
	echo "Error Detected"
else
	echo "The Local System TimeZone Information is as shown below \n $var1"
	echo "$var1">>$logName
fi
