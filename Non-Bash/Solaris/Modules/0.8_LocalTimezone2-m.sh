#!/bin/sh
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION 2 *****"

internalDirectory=$directory
cd $directory
touch systemlocaltimezone2.txt
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION 2 *****">>systemlocaltimezone2.txt

var1=`zdump /usr/share/zoneinfo`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The Local System Timezone Is /n $var1"
	echo "$var1" >> systemlocaltimezone2.txt
fi

