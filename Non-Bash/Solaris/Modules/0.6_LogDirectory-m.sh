#!/bin/sh
echo "*****LOG DIRECTORY CONTENT INFORMATION *****"

internalDirectory=$directory
cd $directory
touch logdirectory.txt 
echo "*****LOG DIRECTORY CONTENT INFORMATION *****" >> logdirectory.txt

var1=`ls /var/log/*`
if [ "$var1" = "" ];then
	echo "Error Detected Or Empty"
else
	echo "The Log Directory Content Are As Follows: /n $var1"
	echo "$var1" >> logdirectory.txt

fi
