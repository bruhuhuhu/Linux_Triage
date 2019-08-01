#!/bin/bash
#3.6 Codes To Check System Uptime Starts Here

echo -e "\e[31;43m*****Information On System Uptime Is Listed Here*****\e[0m"
fileName35=sysUp_$now.txt
fullPath35=$newDir/$fileName35
#touch $fullPath35
echo "*****Checking All Services Running*****" >> $fullPath35
uptimeVar=$(uptime)
if test -z "$uptimeVar":
then 
     	echo "No Entry Detected"
else
    	echo "The Current System Uptime is as follows: "
        echo "$uptimeVar"
        echo "$uptimeVar">>$fullPath35
fi