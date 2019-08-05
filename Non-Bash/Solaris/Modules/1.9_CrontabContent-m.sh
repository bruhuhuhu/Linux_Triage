#!/bin/sh
echo "*****Crontab Content Information *****"

internalDirectory=$directory
cd $directory
touch crontabcontent.txt
echo "*****Crontab Content Information *****" >>crontabcontent.txt  

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Crontab Content Is As Follows \n $var1"
	echo "$var1" >>crontabcontent.txt
fi
