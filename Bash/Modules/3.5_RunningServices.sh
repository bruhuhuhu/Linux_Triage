#!/bin/bash
#3.5 Codes To Check All The Services That Are Currently Running

echo -e "\e[31;43m*****Information On All Services That Are Running Is Listed Here*****\e[0m"
fileName34=svcRun_$now.txt
fullPath34=$newDir/$fileName34
#touch $fullPath34
echo "*****Checking All Services Running*****" >> $fullPath34
servicesVar=$(service --status-all || echo "NONE" )
if [ "$servicesVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The Services that is currently running is as follows: "
        echo "$servicesVar"
        echo "$servicesVar">>$fullPath34
fi