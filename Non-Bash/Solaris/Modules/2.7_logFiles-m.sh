#!/bin/sh
echo "*****All log files are listed here*****"

internalDirectory=$directory
cd $directory
touch loglist.txt
echo "*****All log files are listed here*****">>loglist.txt  

var1=`ls -l /var/log `

if [ "$var1" = "" ];then
	echo "Error Detected or Empty"
else
	echo "All log files are as follows: "
	echo "$var1">>loglist.txt
fi
