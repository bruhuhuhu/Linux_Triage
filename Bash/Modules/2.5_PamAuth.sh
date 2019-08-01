#!/bin/bash
#2.5 PAM System-Auth Checker Starts Here

echo -e "\e[31;43m*****PAM Authentication System Information*****\e[0m"
fileName24=PamAuthConfig_$now.txt
fullPath24=$newDir/$fileName24
#touch fullPath24
echo "*****PAM Authentication System Configuration*****"
if [ -f "/etc/pam.d/system-auth" ]
then
    	pamSystemVar=$(cat /etc/pam.d/system-auth 2>/dev/null|| echo "NONE")
        if [ "$pamSystemVar" == "NONE" ]
        then 
             	echo "File Not Found"
        else
            	echo "The xinet configuration are as follows: "
                echo "$pamSystemVar"
                echo "$pamSystemVar">>$fullPath24
fi

else
    	echo "File Cannot Be Found"
fi