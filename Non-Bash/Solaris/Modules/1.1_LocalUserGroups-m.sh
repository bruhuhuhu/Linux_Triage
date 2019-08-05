#!/bin/sh
echo "*****LOCAL USER GROUP INFORMATION *****"

internalDirectory=$directory
cd $directory
touch localusergroup.txt
echo "*****LOCAL USER GROUP INFORMATION *****" >>localusergroup.txt 

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The User Groups On The System: /n $var1"
	echo "$var1">>localusergroup.txt
fi
