#!/bin/bash
#2.9 Disk Filesystem Checker Code Starts Here

echo -e "\e[31;43m*****Disk Filesystem Information*****\e[0m"
fileName28=diskFS_$now.txt
fullPath28=$newDir/$fileName28
#touch fullPath28
echo "*****Cron Job List Checker*****" >> $fullPath28
dfVar=$(df)
if test -z "$dfVar":
then 
     	echo "Error Detected"
else
    	echo "The Disk File System are as follows: "
        echo "$dfVar"
        echo "$dfVar">>$fullPath28
fi
