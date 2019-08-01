#!/bin/bash
#3.2 Codes to check whether the host network cards are running in promiscous mode
echo -e "\e[31;43m*****Information On Whether The Interface Is In Promiscous Mode*****\e[0m"
fileName31=promMode_$now.txt
fullPath31=$newDir/$fileName31
#touch $fullPath31
echo "*****List Of Recently Opened Files With A Link Count Less Than 1*****" >> $fullPath31
promiscVar=$(grep promisc /var/log/syslog 2>/dev/null|| echo "NONE" )
if [ "$promiscVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The Interfaces That Are Currently In Promiscous Mode are as follows: "
        echo "$lsofL1Var"
        echo "$lsofL1Var">>$fullPath31
fi