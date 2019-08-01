#!/bin/bash 
#1.2 Group List Check Codes Start Here

echo -e "\e[31;43m*****LOCAL USER GROUP INFORMATION*****\e[0m"
fileName11=groupList_$now.txt
fullPath11=$newDir/$fileName11
#touch fullPath11
echo "*****SYSTEM USER GROUP INFORMATION*****" >> $fullPath11
groupVar=$( cat /etc/group || echo "NONE" )
if [ "$groupVar" == "NONE" ]
then 
        echo "Error Detected"
else
    	echo "The User Groups On The System Is: "
        echo "$groupVar"
        echo "$groupVar" >> $fullPath11
fi