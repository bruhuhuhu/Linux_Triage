#!/bin/bash
#2.1 Authorization Systems Configuration Check Codes Starts Here

echo -e "\e[31;43m*****Authorization Systems Configuration Check Codes Starts Here*****\e[0m"
fileName20=authenticationSystemConfiguration_$now.txt
fullPath20=$newDir/$fileName20
#touch fullPath20
echo "*****AUTH LOG INFORMATION*****" >> $fullPath20
authorizationVar=$(cat /var/log/secure 2>/dev/null|| echo "NONE")
if [ "$authorizationVar" == "NONE" ]
then 
     	echo "File Not Found"
else
    	echo "The System Authentication Logs are as follows: "
        echo "$authorizationVar"
        echo "$authorizationVar">>$fullPath20
fi

