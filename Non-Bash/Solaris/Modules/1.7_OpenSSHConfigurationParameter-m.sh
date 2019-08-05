#!/bin/sh
echo "*****OPENSSH CONFIGURATION PARAMETER *****"

internalDirectory=$directory
cd $directory
touch openSSHconfiguration.txt
echo "*****OPENSSH CONFIGURATION PARAMETER *****" 
>>openSSHconfiguration.txt  

var1=`cat /etc/ssh/ssh_config`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The OpenSSH Daemon Configuration Is Shown Below \n $var1"
	echo "$var1">>openSSHconfiguration.txt
fi

