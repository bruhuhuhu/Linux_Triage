#!/bin/bash

#0.2 Hostname Check Code Starts Here

echo -e  "\e[31;43m*****HOSTNAME INFORMATION*****\e[0m" 
var1=$(cat /etc/hostname)
fileName1=hostName_$now.txt
fullPath1=$newDir/$fileName1
#touch fullPath1
if test -z "$var1":
then
    	echo "Error Detected"
else
    	echo "The Local Hostname Is : $var1" 
        echo "$var1" >>$fullPath1 
fi