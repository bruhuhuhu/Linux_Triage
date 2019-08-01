#!/bin/bash
#3.1 List Recently Opened Files With A Link Count Less Than 1

echo -e "\e[31;43m*****Recently Opened Files With A Link Count Less Than 1*****\e[0m"
fileName30=recentlyOpenedLessThan1_$now.txt
fullPath30=$newDir/$fileName30
#touch fullPath30
echo "*****List Of Recently Opened Files With A Link Count Less Than 1*****" >> $fullPath30
lsofL1Var=$(lsof +L1 || echo "NONE" )
if [ "$lsofL1Var" == "NONE" ]
then 
     	echo "Error Detected"
else
        echo "The Recently Opened Files With A Link Count Less Than 1 are as follows: "
        echo "$lsofL1Var"
        echo "$lsofL1Var">>$fullPath30
fi