#!/bin/bash
#2.0 Failed Auhentication Attempt History Check Codes Starts Here

echo -e "\e[31;43m*****Failed User Authentication History Information*****\e[0m"
fileName19=failedAuthenticationHistory_$now.txt
fullPath19=$newDir/$fileName19
#touch fullPath19
echo "*****FAILED USER AUTHENTICATION ATTEMMPT INFORMATION*****" >> $fullPath19
failedLoginHistoryVar=$(cat /var/log/auth.log 2>/dev/null|| echo "NONE")
if [ "$failedLoginHistoryVar" == "NONE" ]
then 
     	echo "File Not Found"
else
    	echo "The recent failed user authentication history are as follows: "
        echo "$failedLoginHistoryVar"
        echo "failedLoginHistoryVar">>$fullPath19
fi