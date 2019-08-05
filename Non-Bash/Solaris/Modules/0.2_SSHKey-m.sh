#!/bin/sh
echo "*****SSH HOST KEY INFORMATION *****"

internalDirectory=$directory
cd $directory
touch SSHHOSTINFO.txt 
echo "*****SSH HOST KEY INFORMATION *****">>SSHHOSTINFO.txt

var1=`cat /etc/ssh/ssh*`
if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Local Hostname Is: \n $var1"
	echo "$var1" >>SSHHOSTINFO.txt
fi
