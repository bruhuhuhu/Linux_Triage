#!/bin/bash 
#1.6 SkelDirectory Content Check Codes Starts Here

echo -e "\e[31;43m*****SKEL DIRECTORY CONTENT INFORMATION*****\e[0m"
fileName15=skelDirectoryContent_$now.txt
fullPath15=$newDir/$fileName15
#touch $fullPath15
echo "*****SKEL DIRECTORY CONTENT INFORMATION*****" >> $fullPath15
etcSkel=$(ls -A /etc/skel)
if [ "$etcSkel" == ""  ]
then
	echo "The Directory Is Empty"
else
	echo "The Directory Is Not Empty, The Contents Of The Directory Is As Below: "
	ls -l /etc/skel | tee $fullPath15
fi