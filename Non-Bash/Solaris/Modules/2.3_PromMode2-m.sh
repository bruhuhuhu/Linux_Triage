#!/bin/sh
echo "*****Information On Whether The Interface Is In Promiscous Mode 
*****"

internalDirectory=$directory
cd $directory
touch promiscous2.txt 
echo "*****The interfaces that are curently in promiscous mode is as 
follows:  *****" >>promiscous2.txt  

var1=`grep promisc /var/log/syslog`

if [ "$var1" = "" ];then
	echo "Error Detected Or File is Empty"
else
	echo "The interfaces that are currently in promiscous mode is as 
follows: \n $ var1"
	echo "$var1">>promiscous2.txt
fi
