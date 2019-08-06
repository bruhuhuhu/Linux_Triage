#!/bin/sh
echo "*****SSH HOST KEY INFORMATION*****"

var1=$(cat /etc/ssh/ssh*)
localdirectory=$directory
cd $directory
touch sshHostKey.txt
echo "*****SSH HOST KEY INFORMATION*****" >>sshHostKey.txt

if [ $var1 = "" ];then
	echo "Error Detected"
else
	echo "The Local SSH Key Is: \n $var1"
	echo "$var1">>sshHostKey.txt
fi
