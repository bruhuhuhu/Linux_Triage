#!/bin/sh
echo "*****Information on current system uptime*****"

internalDirectory=$directory
cd $directory
touch systemuptime.txt
echo "*****Information On The Current System 
Uptime*****">>systemuptime.txt  

var1=`uptime`

if [ "$var1" = "" ];then
	echo "Error Detected or Empty"
else
	echo "The Current system uptime is as follows: /n $var1"
	echo "$var1">>systemuptime.txt
fi
