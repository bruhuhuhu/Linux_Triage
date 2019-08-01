#!/bin/bash
#2.6 PAM Password-Auth Checker Starts Here

echo -e "\e[31;43m*****PAM Password-Auth Checker *****\e[0m"
fileName25=PamPasswordAuthConfig_$now.txt
fullPath25=$newDir/$fileName25
#touch fullPath25
echo "*****PAM Password-Auth Checker*****" >> $fullPath25
pamPassVar=$(cat /etc/pam.d/password-auth 2>/dev/null|| echo "NONE")
if [ "$pamPassVar" == "NONE" ]
then 
     	echo "File Not Found"
else
    	echo "The Pam Password Auth Configuration are as follows: "
        echo "$authorizationVar"
        echo "$authorizationVar">>$fullPath25
fi