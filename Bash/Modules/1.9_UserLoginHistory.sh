#!/bin/bash
#1.9 User Login History Check Codes Starts Here

echo -e "\e[31;43m*****User Login History Information*****\e[0m"
fileName18=userLoginHistory_$now.txt
fullPath18=$newDir/$fileName18
#touch fullPath18
echo "*****USER LOGIN INFORMATION*****" >> $fullPath18
loginHistoryVar=$(last -if /var/log/wtmp || echo "NONE")
if [ "$loginHistoryVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The recent user login history are as follows: "
        echo "$loginHistoryVar"
        echo "$loginHistoryVar">>$fullPath18
fi