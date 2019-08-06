#!/bin/sh
echo "*****Disk Filesystem Information*****"

var1=$(df 2>/dev/null)
localdirectory=$directory
cd $directory
logName="diskfilesystem.txt"
touch $logName 
echo "*****Disk Filesystem Information*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "$var1"
	echo "$var1">>$logName
fi
