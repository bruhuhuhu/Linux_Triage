#!/bin/bash 

#0.5 Host File Check Code Starts Here

echo -e "\e[31;43m*****LOCAL SYSTEM HOST FILE INFORMATION*****\e[0m"
fileName4=systemHostFile_$now.txt
fullPath4=$newDir/$fileName4
#touch fullPath4
echo "*****LOCAL SYSTEM HOST FILE INFORMATION*****" >>$fullPath4
hostVar=$( cat /etc/hosts || echo "NONE" )
if [ "$hostVar" == "NONE" ]
then
    	echo "Error Detected"
else
    	echo "The Entries That Are Inside The Host File Is: "
        echo "$hostVar" >> $fullPath4
fi