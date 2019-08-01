#!/bin/bash 
#0.3 Host Key For The SSH Server Check Codes Starts Here

echo -e "\e[31;43m*****SSH Host Key INFORMATION*****\e[0m"
fileName2=sshKey_$now.txt
fullPath2=$newDir/$fileName2
#touch fullPath2
echo "*****SSH HOST KEY INFORMATION*****" >>$fullPath2
hostKeyVar=$(cat /etc/ssh/ssh_host_* || echo "NONE" )
if [ "$hostKeyVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The SSH Server Host Key is as follows: "
        echo "$hostKeyVar"
        echo "$hostKeyVar">>$fullPath2
fi