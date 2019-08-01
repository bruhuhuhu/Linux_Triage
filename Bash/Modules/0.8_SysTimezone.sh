#!/bin/bash 
#0.8 System Timezone Check Codes Starts Here

echo -e "\e[31;43m*****SYSTEM LOCAL TIMEZONE INFORMATION*****\e[0m"
fileName7=systemTimezone_$now.txt
fullPath7=$newDir/$fileName7
#touch fullPath7
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION*****" >> $fullPath7
timezoneVar=$(zdump /etc/localtime || echo "NONE" )
if [ "$timezoneVar" == "NONE" ]
then 
     	echo "Error Detected"
else
        echo "The Local System Timezone Is: "
        echo "$timezoneVar"
        echo "$timezoneVar" >> $fullPath7
fi