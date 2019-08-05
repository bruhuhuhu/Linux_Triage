#!/bin/sh
echo "*****HOSTNAME INFORMATION*****"

var1=`uname -a`
localDirectory=$directory
pwd
cd $directory
pwd
echo "$localDirectory"
touch $localDirectory/hostFileName.txt
echo "*****HOSTNAME INFORMATION*****">>$localDirectory/hostFileName.txt

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Local Hostname Is: \n $var1"
	echo "$var1" >>$localDirectory/hostFileName.txt
fi
