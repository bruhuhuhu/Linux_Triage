#!/bin/sh
echo "*****INFORMETION ON WHETHER THE INTERFACE IS IN PROMISCOUS MODE*****"

var1=$(grep promisc /var/adm/messages)
localdirectory=$directory
cd $directory
logName="promiscous.txt"
touch $logName 
echo "*****INFORMATION ON WHETHER THE INTERFACE IS IN PROMISCOUS MODE *****" >>$logName

if ( $var1 = " " );then
	echo "Error Detected"
else
	echo "$var1"
	echo "$var1">>$logName
fi
