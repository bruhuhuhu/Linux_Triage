#!/bin/sh
echo "*****Disk Filesystem Information *****"

internalDirectory=$directory
cd $directory
touch diskfilesystem.txt
echo "*****Disk Filesystem Information *****" >>diskfilesystem.txt  

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Disk Filesystem is as follows: \n $var1"
	echo "$var1" >>diskfilesystem.txt
fi
