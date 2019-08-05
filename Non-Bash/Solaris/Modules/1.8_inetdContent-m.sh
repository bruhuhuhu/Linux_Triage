#!/bin/sh
echo "*****inetd Content Information*****"

internalDirectory=$directory
cd $directory
touch inetdcontent.txt
echo "*****inetd Content Information *****" >>inetdcontent.txt  

var1=`cat /etc/inetd.conf`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The inetd configuration is as follows: \n $var1 "
	echo "$var1" >>inetdcontent.txt

fi
