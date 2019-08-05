#!/bin/sh
echo "*****SYSTEM ENVIRONMENT PROFILE INFORMATION *****"

internalDirectory=$directory
cd $directory
touch systemenvironment.txt
echo "*****SYSTEM ENVIRONMENT PROFILE INFORMATION 
*****">>systemenvironment.txt  

var1=`cat /etc/profile`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The local system environment iis as follows \n $var1"
	echo "$var1">>systemenvironment.txt	
fi
