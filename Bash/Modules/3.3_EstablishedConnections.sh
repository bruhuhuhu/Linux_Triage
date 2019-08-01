#!/bin/bash
#3.3 Codes To Check The Currently Establihed Network Connections To External Servers Starts Here

echo -e "\e[31;43m*****Information On Currently Established Network Connections Starts Here*****\e[0m"
fileName32=netCon_$now.txt
fullPath32=$newDir/$fileName32
#touch $fullPath32
echo "*****List Of Currently Established Network Connections*****" >> $fullPath32
netstatVar=$(netstat -nap || echo "NONE" )
if [ "$netstatVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The Currently Established Network Connections are as follows: "
        echo "$netstatVar"
        echo "$netstatVar">>$fullPath32
fi