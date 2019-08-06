#!/bin/sh
echo "*****SKEL DIRECTORY CONTENT SCAN*****"

var1=$()
localdirectory=$directory
cd $directory
logName=" "
touch $logName 
echo "***** *****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else

	echo "$var1">>$logName
fi
