#!/bin/sh
echo "*****SHADOW FILES INFORMATION *****"

internalDirectory=$directory
cd $directory
touch shadow.txt 
echo "*****SHADOW FILES INFORMATION*****" >>shadow.txt

var1=`cat /etc/shadow`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Shadow File Information Is: \n $va"
	echo "$var1" >>shadow.txt
fi
