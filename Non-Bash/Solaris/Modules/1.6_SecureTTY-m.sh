#!/bin/sh
echo "*****Secure TTY Parameters Information *****"

internalDirectory=$directory
cd $directory
touch secureTTY.txt
echo "*****Secure TTY Parameters Information*****" >>secureTTY.txt  

var1=`cat /etc/securetty 2>/dev/null`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Secure TTY Parameter Information Is As Below \n $var1"
	echo "$var1" >>secureTTY.txt
fi
