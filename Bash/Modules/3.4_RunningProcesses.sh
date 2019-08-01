#!/bin/bash
#3.4 Codes To Check All The Processes That Are Currently Runnning

echo -e "\e[31;43m*****Information On All Processes That Are Running Is Listed Here*****\e[0m"
fileName33=procRun_$now.txt
fullPath33=$newDir/$fileName33
#touch $fullPath33
echo "*****List Of All Processes That Are Running*****" >> $fullPath33
processesVar=$(ps aux || echo "NONE" )
if [ "$processesVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The Processes that is currently running is as follows: "
        echo "$processesVar"
        echo "$processesVar">>$fullPath33
fi