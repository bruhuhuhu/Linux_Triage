#!/bin/bash
#2.2 Audit Log Check Codes Starts Here

echo -e "\e[31;43m*****Audit Log Content Information*****\e[0m"
fileName21=authenticationSystemConfiguration_$now.txt
fullPath21=$newDir/$fileName21
#touch fullPath21
echo "*****AUDIT LOG CONTENT INFORMATION*****" >> $fullPath21
if [ -d "/var/log/audit" ]
then 
     	auditLogVar=$(cat /var/log/audit/audit.log || echo "NONE")
        if [ "$auditLogVar" == "NONE" ]
        then 
             	echo "File Not Found"
        else
            	echo "The Audit Log Contents are as follows: "
                echo "$auditLogVar"
                echo "$auditLogVar">>$fullPath21
        fi
else
    	echo "The Directory Is Not Present"
fi