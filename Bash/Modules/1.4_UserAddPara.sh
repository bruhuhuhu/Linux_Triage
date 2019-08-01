#!/bin/bash 
#1.4 UserAdd Parameter Check Codes Start Here 

echo -e "\e[31;43m*****USERADD PARAMETER INFORMATION*****\e[0m"
echo "13"
fileName13=userAddParameterList_$now.txt
fullPath13=$newDir/$fileName13
#touch fullPath13
echo "*****USERADD PARAMETER INFORMATION*****" >> $fullPath13
userAddVar=$( cat /etc/default/useradd || echo "NONE" )
if [ "$userAddVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The UserAdd Parameters That Exist On The System Is: "
        echo "$userAddVar"
        echo "$userAddVar">>$fullPath13
fi