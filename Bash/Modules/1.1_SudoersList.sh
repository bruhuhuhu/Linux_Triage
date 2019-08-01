#!/bin/bash 
#1.1 Sudoers List Check Codes Start Here

echo -e "\e[31;43m*****SUDOERS LIST INFORMATION*****\e[0m"
fileName10=sudoersList_$now.txt
fullPath10=$newDir/$fileName10
#touch fullPath10
echo "*****SYSTEM SUDOERS INFORMATION*****" >> $fullPath10
sudoVar=$( cat /etc/sudoers || echo "NONE" )
if [ "$sudoVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The List Of Accounts With Sudo Privilege Are: "
        echo "$sudoVar"
        echo "$sudoVar" >> $fullPath10
fi