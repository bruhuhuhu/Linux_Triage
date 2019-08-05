#!/bin/sh
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION *****"

internalDirectory=$directory
cd $directory
touch systemlocaltimezone.txt
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION *****" >>systemlocaltimezone.txt 

var1=`zdump /etc/localtime`
if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Local System Timezone is /n $var1"
	echo "$var1" >> systemlocaltimezone.txt
fi
