#!/bin/sh
echo "*****SUDOERS LIST INFORMATION *****"

internalDirectory=$directory
cd $directory
touch  sudoerslist.txt
echo "*****SUDOERS LIST INFORMATION*****" >> sudoerslist.txt  

var1=`cat /etc/sudoers`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The List Of Accounts With Sudoer's Privilege Are: /n 
$var1"
	echo "$var1" >> sudoerslist.txt
fi
