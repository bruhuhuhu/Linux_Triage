#!/bin/sh
echo "*****Local DHCP Client Lease Information *****"

internalDirectory=$directory
cd $directory
touch DHCPclientlease.txt
echo "*****Local DHCP Client Lease Information*****">>DHCPclientlease.txt 

var1=`cat /var/lib/dhclient 2>/dev/null`

if [ "$var1" = "" ];then
	echo "Error Detected"
else
	echo "The DHCP Client Lease Information Is As Follows: /n $var1"
	echo "$var1">>DHCPclientlease.txt
fi
