#!/bin/sh
echo "*****USERADD PARAMETER INFORMATION *****"

internalDirectory=$directory
cd $directory
touch useraddparameter.txt  
echo "*****USERADD PARAMETER INFORMATION *****">>useraddparameter.txt  

var1=`cat /etc/default/useradd 2>/dev/null `

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The User Account Parameter Is \n $var1"
	#echo "$var1">>useraddparameter.txt
fi
