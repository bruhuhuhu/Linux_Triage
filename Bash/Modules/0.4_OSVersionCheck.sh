#!/bin/bash 

#0.4 Software Version Check Code Starts Here

echo -e "\e[31;43m*****SOFTWARE VERSION INFORMATION*****\e[0m"
fileName3=softwareVersion_$now.txt
fullPath3=$newDir/$fileName3
#touch fullPath3
echo "*****Software Version INFORMATION*****" >>$fullPath3
versionVar=$(grep 'VERSION' /etc/*-release || echo "NONE")
if [ "$versionVar" == "NONE" ]
then 
     	echo "Error Detected"
else
        echo "The Software Version Is: $versionVar"
        echo "$versionVar" >> $fullPath3
fi