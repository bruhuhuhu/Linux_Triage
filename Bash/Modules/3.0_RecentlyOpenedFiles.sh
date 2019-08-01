#!/bin/bash
#3.0 List Recently Opened Files Here

echo -e "\e[31;43m*****Recently Opened Files*****\e[0m"
fileName29=recentlyOpenedFiles_$now.txt
fullPath29=$newDir/$fileName29
#touch fullPath29
echo "*****List Of Recently Opened Files****" >> $fullPath29
lsofVar=$(lsof -i || echo "NONE")
if [ "$lsofVar" == "NONE" ]
then 
     	echo "File Not Found"
else
    	echo "The Configuration Parameter are as follows: "
        echo "$lsofVar"
        echo "$lsofVar">>$fullPath29
fi