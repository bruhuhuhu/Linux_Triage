#!/bin/sh
echo "*****USER ACCOUNT PARAMETER INFORMATION *****"

internalDirectory=$directory
cd $directory
touch useraccountparameter.txt
echo "*****USER ACCOUNT PARAMETER INFORMATION 
*****">>useraccountparameter.txt  

var1=`cat /etc/login.defs 2>/dev/null`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The User Account Parameter Is \n $var1"
	echo "$var1">>useraccountparameter.txt
fi
