#!/bin/sh
echo "*****SKEL DIRECTORY CONTENT SCAN *****"

internalDirectory=$directory
cd $directory
touch skeldirectorycontent.txt
echo "***** *****" >>skeldirectorycontent.txt  

var1=`cat /etc/profile`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The SKEL Directory: \n $var1"
	echo "$var1">>skeldirectorycontent.txt
fi
