#!/bin/sh
echo "*****Information On All Processes That Are Running*****"

var1=$(ps)
localdirectory=$directory
cd $directory
logName="currentrunningprocesses.txt "
touch $logName 
echo "*****Information On All Processes That Are Running*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "$var1"
	echo "$var1">>$logName
fi
