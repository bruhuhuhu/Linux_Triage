#!/bin/bash 
#1.5 System Environment Profile Check Codes Start Here

echo -e "\e[31;43m*****SYSTEM ENVIRONMENT PROFILE INFORMATION*****\e[0m"
echo "14"
fileName14=systemEnvironmentProfile_$now.txt
fullPath14=$newDir/$fileName14
echo "$fullPath14"
echo "*****SYSTEM ENVIRONMENT PROFILE INFORMATION*****" >> $fullPath14
systemEnvironmentVar=$( cat /etc/profile || echo "NONE" )
if [ "$systemEnvironmentVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The Local Accounts That Exist On The System Is: "
        echo "$systemEnvironmentVar"
        echo "$systemEnvironmentVar">>$fullPath14
fi