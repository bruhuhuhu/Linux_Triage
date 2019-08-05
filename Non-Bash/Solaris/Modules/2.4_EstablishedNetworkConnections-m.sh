#!/bin/sh
echo "*****Information On Currently Established Network Connections 
*****"

internalDirectory=$directory
cd $directory
touch currentestablishednetwork.txt
echo "*****Currently Established Network Connections*****" 
>>currentestablishednetwork.txt  

var1=`netstat -nap`

if [ "$var1" = "" ];then
	echo "Error Detected Or Empty"
else
	echo "The current established network connections are: /n $var1"
	echo "$var1">>currentestablishednetwork.txt
fi
