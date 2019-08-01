#!/bin/bash 
#1.0 Passwd File Check Codes Start Here

echo -e "\e[31;43m*****LOCAL USER ACCOUNT INFORMATION*****\e[0m"
fileName9=passwdFile_$now.txt
fullPath9=$newDir/$fileName8
#touch fullPath9
echo "*****SYSTEM LOCAL USER ACCOUNT INFORMATION*****" >> $fullPath9
passwdVar=$( cat /etc/passwd || echo "NONE" )
if [ "$passwdVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The Local Accounts That Exist On The System Is: "
        echo "$passwdVar"
        echo "$passwdVar" >> $fullPath9
fi