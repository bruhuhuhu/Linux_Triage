#!/bin/sh
echo "*****Information On Whether The Interface Is In Promiscous Mode 
*****"

internalDirectory=$directory
cd $directory
touch  promiscous.txt
echo "*****Networek Interface Promiscous Mode Check *****" 
>>promiscous.txt  

var1=`grep promisc /var/adm/messages`

if [ "$var1" = "" ];then
	echo "Error Detected or Empty"
else
	echo "The interfaces that are currently in promiscous mode are: 
\n $var1"
	echo "$var1" >>promiscous.txt
fi
