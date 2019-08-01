#!/bin/bash
#2.3 inetd Configuration Check Codes Starts Here

echo -e "\e[31;43m*****inetd Content Information*****\e[0m"
fileName22=inetdConfig_$now.txt
fullPath22=$newDir/$fileName22
#touch fullPath22
if [ -f "/etc/inetd.conf" ]
then
    	inetConfigVar=$(cat /etc/inetd.conf || echo "NONE")
        if [ $inetConfigVar == "NONE" ]
        then 
             	echo "Error Detected"
        else
            	echo "The inet configuration are as follows: "
                echo "$inetConfigVar"
                echo "$inetConfigVar">>$filePath22
fi

else
    	echo "File Cannot Be Found"
fi