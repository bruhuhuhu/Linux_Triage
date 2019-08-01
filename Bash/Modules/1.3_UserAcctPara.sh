#!/bin/bash 
#1.3 User Account Parameter Check Codes Start Here

echo -e "\e[31;43m*****USER ACCOUNT PARAMETER INFORMATION*****\e[0m"
fileName12=userAccountParameterList_$now.txt
fullPath12=$newDir/$fileName12
#touch fullPath12
echo "*****USER ACCOUNT PARAMETER INFORMATION*****" >> $fullPath12
parameterVar=$( cat /etc/login.defs || echo "NONE" )
if [ "$parameterVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The User Acccount Parameter Of The System Is: "
        echo "$parameterVar"
        echo "$parameterVar">> $fullPath12
fi