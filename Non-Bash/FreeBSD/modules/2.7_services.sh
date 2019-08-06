#!/bin/sh
echo "*****Currently Running Services Are Listed Here*****"

var1=$(service -e 2>/dev/null)
localdirectory=$directory
cd $directory
logName="servicestatus.txt"
touch $logName 
echo "*****RUNNING SERVICES*****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "$var1"
	echo "$var1">>$logName
fi
