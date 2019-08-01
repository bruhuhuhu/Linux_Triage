#!/bin/bash 
#0.9 System Timezone Directory Check Code Starts Here

echo -e "\e[31;43m*****SYSTEM LOCAL TIMEZONE INFORMATION*****\e[0m"
fileName8=systemTimezoneDirectory_$now.txt
fullPath8=$newDir/$fileName8
#touch fullPath8
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION*****" >> $fullPath8
timeZoneVar=$(zdump /usr/share/zoneinfo || echo "NONE" )
if [ "$timeZoneVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The Local System Timezone Is: "
        echo "$timeZoneVar"
        echo "$timeZoneVar" >> $fullPath8
fi