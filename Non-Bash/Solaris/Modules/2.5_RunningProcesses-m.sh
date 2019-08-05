#!/bin/sh
echo "*****Information On All Processes*****"

internalDirectory=$directory
cd $directory
touch currentrunningprocesses.txt
echo "*****Information On All Running Processes*****" 
>>currentrunningprocesses.txt  

if [ "$var1" = "" ];then
	echo "Error Detected Or Empty"
else
	echo "The processes that are currently running are: \n $var1"
	echo "$var1">>currentrunningprocesses.txt
fi
