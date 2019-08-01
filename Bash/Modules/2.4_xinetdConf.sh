#!/bin/bash
#2.4 xinetd Configuration Check Code Starts Here

echo -e "\e[31;43m*****xinetd Content Information*****\e[0m"
fileName23=xinetdConfig_$now.txt
fullPath23=$newDir/$fileName23
#touch fullPath23
echo "*****xinetd Configuration*****" >> $fullPath23
if [ -f "/etc/xinetd.conf" ]
then
    	xinetConfigVar=$(cat /etc/xinetd.d || echo "NONE")
        if [ $xinetConfigVar == "NONE" ]
        then 
             	echo "File Not Found"
        else
            	echo "The xinet configuration are as follows: "
                echo "$xinetConfigVar"
                echo "$xinetConfigVar">>$fullPath23
fi

else
    	echo "File Cannot Be Found"
fi