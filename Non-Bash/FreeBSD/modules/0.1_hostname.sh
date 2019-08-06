#!/bin/sh
echo "*****HOSTNAME INFORMATION*****"

var1=$(uname -a)
localdirectory=$directory
cd $directory
touch hostfilename.txt
echo "*****HOSTNAME INFORMATION*****" >>hostfilename.txt

if [ $var1 = "" ];then
	echo "Error Detected"
else
	echo "The Local Hostname Is $var1"
	echo "$var1" >>hostfilename.txt
fi
