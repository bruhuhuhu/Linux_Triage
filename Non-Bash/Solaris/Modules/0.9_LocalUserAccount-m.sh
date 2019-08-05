#!/bin/sh
echo "***** *****"

internalDirectory=$directory
cd $directory
touch localuseraccount.txt  
echo "***** *****" >> localuseraccount.txt

var1=`cat /etc/passwd`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "the Local Accounts On The System Are /n $var1"
	echo "$var1" >> localuseraccount.txt
fi
