#!/bin/sh
echo "*****LOCAL DHCP CLIENT LEASE INFORMATION*****"

var1=`cat /var/lib/dhclient.{interface}.leases`
localdirectory=$directory
cd $directory
logName=" "
touch $logName 
echo "***** *****" >>$logName

if [ "$var1"=" " ];then
	echo 'Error Detected"
else

	echo "$var1">>$logName
fi
