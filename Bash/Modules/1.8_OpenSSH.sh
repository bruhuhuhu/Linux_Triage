#!/bin/bash 
#1.8 System Wide Configuration For OpenSSH Check Code Starts Here

echo -e "\e[31;43m*****OpenSSH Configuration Parameters Information*****\e[0m"
fileName17=openSSHConfig_$now.txt
fullPath17=$newDir/$fileName17
#touch fullPath17
echo "*****OPENSSH CONFIGURATION PARAMETER INFORMATION*****" >> $fullPath17
sshdConfigVar=$( cat /etc/ssh/sshd_config || echo "NONE")
if [ "$sshdConfigVar" == "NONE" ]
then 
     	echo "File Not Found"
else
        echo "The OpenSSH Daemon Connfiguration Parameters Is: "
        echo "$sshdConfigVar"
        echo "$sshdConfigVar">>$fullPath17
fi