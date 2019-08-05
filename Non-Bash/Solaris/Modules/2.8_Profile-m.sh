#!/bin/sh
echo "*****Profile Is Listed Here*****"

internalDirectory=$directory
cd $directory
touch profile.txt
echo "*****Profile Is Listed Here*****">>profile.txt  

var1=`cat /etc/profile`

if [ "$var1" = "" ];then
	echo "Error Detected Or Empty"
else
	echo "System Profile Is As Follows: /n $var1"
	echo "$var1">>profile.txt
fi
