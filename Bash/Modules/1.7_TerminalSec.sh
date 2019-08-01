#!/bin/bash 
#1.7 Terminal Security Check Codes Starts Here

echo -e "\e[31;43m*****Secure TTY Parameters Information*****\e[0m"
fileName16=SecureTTYContent_$now.txt
fullPath16=$newDir/$fileName16
#touch fullPath16
echo "*****SECURE TTY PARAMETERS INFORMATION*****">>"$fullPath16"
secureTtyVar=$( cat /etc/securetty 2>/dev/null || echo "NONE" )
if [ "$secureTtyVar" == "NONE" ]
then 
        echo "Error Detected"
else
        echo "The Secure Terminal Parameters That Exist On The System Is: "
        echo "$secureTtyVar"
        echo "$secureTtyVar">>$fullPath16
fi