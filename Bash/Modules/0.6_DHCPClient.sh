
#0.6 DHCP Client Lease Information Check Codes Starts Here

echo -e "\e[31;43m*****LOCAL DHCP Client Lease INFORMATION*****\e[0m"
fileName5=dhcpClientLease_$now.txt
fullPath5=$newDir/$fileName5
#touch fullPath5
echo "*****LOCAL DHCP ClIENT LEASE*****" >> $fullPath5
if [ -d "/var/lib/dhclient" ]
then 
     	dhClientVar=$(cat /var/lib/dhclient/* 2>/dev/null|| echo "NONE")
        if [ "$dhClientVar" == "NONE" ]
        then 
             	echo "No files found"
        else
            	echo "The DHCP Client Lease Information Is As Follow"
                echo "$dhClientVar"
                echo "$dhClientVar">>$fullPath5
        fi
else
        echo "The Directory Is Not Present"
fi