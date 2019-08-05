#!/bin/sh
echo "*****LOCAL SYSTEM HOST FILE INFORMATION *****"

internalDirectory=$directory
cd $directory
touch localsystemhost.txt 
echo "*****LOCAL SYSTEM HOST FILE INFORMATION *****" 
>>localsystemhost.txt

var1=`cat /etc/hosts`
if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Entries Inside The Host File Are: \n $var1"
	echo "$var1">>localsystemhost.txt
fi
