#!/bin/bash 
#0.7 Log Directory Content Check Codes Starts Here

echo -e "\e[31;43m*****LOG DIRECTORY CONTENT INFORMATION*****\e[0m"
fileName6=logDirectoryContents_$now.txt
fullPath6=$newDir/$fileName6
#touch fullPath6
echo "*****LOG DIRECTORY CONTENT INFORMATION*****">>$fullPath6
if [ -d "/var/lOG" ]
then 
     	logDirVar=$(cat /var/log/*)
        if test -z "$logDirVar"
        then 
             	echo "Error Detected"
        else
            	echo "The Log Directory Content Is As Follow:"
                echo "$logDirVar"
                echo "$logDirVar">>$fullPath6
        fi
else
        echo "The Directory Is Not Present"
fi