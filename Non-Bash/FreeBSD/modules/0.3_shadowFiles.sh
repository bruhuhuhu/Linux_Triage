#!/bin/sh
echo "*****SHADOW FILES INFORMATION*****"

var1=`cat /etc/master.passwd`
localdirectory=$directory
cd $directory
touch shadow.txt
echo "*****SHADOW FILES INFORMATION*****" >>shadow.txt

if [ $var1 = "" ];then
	echo "Error Detected"
else
	echo "The Contents Of The Shadow File Is: \n $var1"
	echo "$var1">>shadow.txt
fi
