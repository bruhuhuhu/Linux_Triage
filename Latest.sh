###############################################################################
# Note: Run the solaris11.sh file in the Solaris 11 Machine itself.
#       1. Give the script executable rights
#          chmod +x solaris11.sh 
#       2. Run ./solaris11.sh
###############################################################################
#HOW TO MOUNT USB ON VMWare
#Step 1: Click VM
#Step 2: Click 'Removable Devices'
#Step 3: Click the device you want to mount
###############################################################################
###############################################################################
#Table Of Contents
#0.1 Creating The Initial Output File
#0.2 Hostname Check Code Starts Here
#0.3 Host Key For The SSH Server Check Codes Starts Here
#0.4 Software Version Check Code Starts Here
#0.5 Host File Check Code Starts Here
#0.6 DHCP Client Lease Information Check Codes Starts Here
#0.7 Log Directory Content Check Codes Starts Here
#0.8 System Timezone Check Codes Starts Here
#0.9 System Timezone Directory Check Code Starts Here
#1.0 Passwd File Check Codes Start Here
#1.1 Sudooers List Check Codes Start Here
#1.2 Group List Check Codes Start Here
#1.3 User Account Parameter Check Codes Start Here
#1.4 UserAdd Parameter Check Codes Start Here 
#1.5 System Environment Profile Check Codes Start Here
#1.6 SkelDirectory Content Check Codes Starts Here
#1.7 Terminal Security Check Codes Starts Here
#1.8 System Wide Configuration For OpenSSH Check Code Starts Here
#1.9 User Login History Check Codes Starts Here
#2.0 Failed Auhentication Attempt History Check Codes Starts Here
#2.1 Authorization Systems Configuration Check Codes Starts Here
#2.2 Audit Log Check Codes Starts Here
#2.3 inetd Configuration Check Codes Starts Here
#2.4 xinetd Configuration Check Code Starts Here
#2.5 PAM System-Auth Checker Starts Here
#2.6 PAM Password-Auth Checker Starts Here
#2.7 Crontab Content Checker Starts Here
#2.8 Cron Job List Checker Starts Here
#2.9 Disk Filesystem Checker Code Starts Here
#3.0 List Recently Opened Files Here
#3.1 List Recently Opened Files With A Link Count Less Than 1
#3.2 Codes to check whether the host network cards are running in promiscous mode
#3.3 Codes To Check The Currently Establihed Network Connections To External Servers Starts Here
#3.4 Codes To Check All The Processes That Are Currently Running
#3.5 Codes To Check All The Services That Are Currently Running
#3.6 Codes To Check System Uptime Starts Here
#3.7 Summary
###############################################################################


#!/bin/bash 

#0.1 Creating The Initial Output File
echo "1"
now=$(date +%Y%m%d_%H%M%S)
echo "$now"
newDir=Scan_logs_$now
echo "$newDir"
mkdir $newDir

#0.2 Hostname Check Code Starts Here

echo -e  "\e[31;43m*****HOSTNAME INFORMATION*****\e[0m" 
var1=$(cat /etc/hostname)
fileName1=hostName_$now.txt
fullPath1=$newDir/$fileName1
#touch fullPath1
if test -z "$var1":
then
    	echo "Error Detected"
else
    	echo "The Local Hostname Is : $var1" 
        echo "$var1" >>$fullPath1 
fi

#0.3 Host Key For The SSH Server Check Codes Starts Here

echo -e "\e[31;43m*****SSH Host Key INFORMATION*****\e[0m"
fileName2=sshKey_$now.txt
fullPath2=$newDir/$fileName2
#touch fullPath2
echo "*****SSH HOST KEY INFORMATION*****" >>$fullPath2
hostKeyVar=$(cat /etc/ssh/ssh_host_* || echo "NONE" )
if [ "$hostKeyVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The SSH Server Host Key is as follows: "
        echo "$hostKeyVar"
        echo "$hostKeyVar">>$fullPath2
fi

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

#0.5 Host File Check Code Starts Here

echo -e "\e[31;43m*****LOCAL SYSTEM HOST FILE INFORMATION*****\e[0m"
fileName4=systemHostFile_$now.txt
fullPath4=$newDir/$fileName4
#touch fullPath4
echo "*****LOCAL SYSTEM HOST FILE INFORMATION*****" >>$fullPath4
hostVar=$( cat /etc/hosts || echo "NONE" )
if [ "$hostVar" == "NONE" ]
then
    	echo "Error Detected"
else
    	echo "The Entries That Are Inside The Host File Is: "
        echo "$hostVar" >> $fullPath4
fi

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

#0.7 Log Directory Content Check Codes Starts Here

echo -e "\e[31;43m*****LOG DIRECTORY CONTENT INFORMATION*****\e[0m"
fileName6=logDirectoryContents_$now.txt
fullPath6=$newDir/$fileName6
#touch fullPath6
echo "*****LOG DIRECTORY CONTENT INFORMATION*****">>$fullPath6
if [ -d "/var/lOG" ]
then 
     	logDirVar=$(cat /var/log/*)
        if test -z "$logDirVar"
        then 
             	echo "Error Detected"
        else
            	echo "The Log Directory Content Is As Follow:"
                echo "$logDirVar"
                echo "$logDirVar">>$fullPath6
        fi
else
        echo "The Directory Is Not Present"
fi

#0.8 System Timezone Check Codes Starts Here

echo -e "\e[31;43m*****SYSTEM LOCAL TIMEZONE INFORMATION*****\e[0m"
fileName7=systemTimezone_$now.txt
fullPath7=$newDir/$fileName7
#touch fullPath7
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION*****" >> $fullPath7
timezoneVar=$(zdump /etc/localtime || echo "NONE" )
if [ "$timezoneVar" == "NONE" ]
then 
     	echo "Error Detected"
else
        echo "The Local System Timezone Is: "
        echo "$timezoneVar"
        echo "$timezoneVar" >> $fullPath7
fi


#0.9 System Timezone Directory Check Code Starts Here

echo -e "\e[31;43m*****SYSTEM LOCAL TIMEZONE INFORMATION*****\e[0m"
fileName8=systemTimezoneDirectory_$now.txt
fullPath8=$newDir/$fileName8
#touch fullPath8
echo "*****SYSTEM LOCAL TIMEZONE INFORMATION*****" >> $fullPath8
timeZoneVar=$(zdump /usr/share/zoneinfo || echo "NONE" )
if [ "$timeZoneVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The Local System Timezone Is: "
        echo "$timeZoneVar"
        echo "$timeZoneVar" >> $fullPath8
fi

#1.0 Passwd File Check Codes Start Here

echo -e "\e[31;43m*****LOCAL USER ACCOUNT INFORMATION*****\e[0m"
fileName9=passwdFile_$now.txt
fullPath9=$newDir/$fileName8
#touch fullPath9
echo "*****SYSTEM LOCAL USER ACCOUNT INFORMATION*****" >> $fullPath9
passwdVar=$( cat /etc/passwd || echo "NONE" )
if [ "$passwdVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The Local Accounts That Exist On The System Is: "
        echo "$passwdVar"
        echo "$passwdVar" >> $fullPath9
fi

#1.1 Sudooers List Check Codes Start Here

echo -e "\e[31;43m*****SUDOERS LIST INFORMATION*****\e[0m"
fileName10=sudoersList_$now.txt
fullPath10=$newDir/$fileName10
#touch fullPath10
echo "*****SYSTEM SUDOERS INFORMATION*****" >> $fullPath10
sudoVar=$( cat /etc/sudoers || echo "NONE" )
if [ "$sudoVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The List Of Accounts With Sudo Privilege Are: "
        echo "$sudoVar"
        echo "$sudoVar" >> $fullPath10
fi

#1.2 Group List Check Codes Start Here

echo -e "\e[31;43m*****LOCAL USER GROUP INFORMATION*****\e[0m"
fileName11=groupList_$now.txt
fullPath11=$newDir/$fileName11
#touch fullPath11
echo "*****SYSTEM USER GROUP INFORMATION*****" >> $fullPath11
groupVar=$( cat /etc/group || echo "NONE" )
if [ "$groupVar" == "NONE" ]
then 
        echo "Error Detected"
else
    	echo "The User Groups On The System Is: "
        echo "$groupVar"
        echo "$groupVar" >> $fullPath11
fi

#1.3 User Account Parameter Check Codes Start Here

echo -e "\e[31;43m*****USER ACCOUNT PARAMETER INFORMATION*****\e[0m"
fileName12=userAccountParameterList_$now.txt
fullPath12=$newDir/$fileName12
#touch fullPath12
echo "*****USER ACCOUNT PARAMETER INFORMATION*****" >> $fullPath12
parameterVar=$( cat /etc/login.defs || echo "NONE" )
if [ "$parameterVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The User Acccount Parameter Of The System Is: "
        echo "$parameterVar"
        echo "$parameterVar">> $fullPath12
fi

#1.4 UserAdd Parameter Check Codes Start Here 

echo -e "\e[31;43m*****USERADD PARAMETER INFORMATION*****\e[0m"
echo "13"
fileName13=userAddParameterList_$now.txt
fullPath13=$newDir/$fileName13
#touch fullPath13
echo "*****USERADD PARAMETER INFORMATION*****" >> $fullPath13
userAddVar=$( cat /etc/default/useradd || echo "NONE" )
if [ "$userAddVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The UserAdd Parameters That Exist On The System Is: "
        echo "$userAddVar"
        echo "$userAddVar">>$fullPath13
fi

#1.5 System Environment Profile Check Codes Start Here

echo -e "\e[31;43m*****SYSTEM ENVIRONMENT PROFILE INFORMATION*****\e[0m"
echo "14"
fileName14=systemEnvironmentProfile_$now.txt
fullPath14=$newDir/$fileName14
echo "$fullPath14"
echo "*****SYSTEM ENVIRONMENT PROFILE INFORMATION*****" >> $fullPath14
systemEnvironmentVar=$( cat /etc/profile || echo "NONE" )
if [ "$systemEnvironmentVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The Local Accounts That Exist On The System Is: "
        echo "$systemEnvironmentVar"
        echo "$systemEnvironmentVar">>$fullPath14
fi

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

#1.7 Terminal Security Check Codes Starts Here

echo -e "\e[31;43m*****Secure TTY Parameters Information*****\e[0m"
fileName16=SecureTTYContent_$now.txt
fullPath16=$newDir/$fileName16
#touch fullPath16
echo "*****SECURE TTY PARAMETERS INFORMATION*****">>"$fullPath16"
secureTtyVar=$( cat /etc/securetty 2>/dev/null || echo "NONE" )
if [ "$secureTtyVar" == "NONE" ]
then 
        echo "Error Detected"
else
        echo "The Secure Terminal Parameters That Exist On The System Is: "
        echo "$secureTtyVar"
        echo "$secureTtyVar">>$fullPath16
fi

#1.8 System Wide Configuration For OpenSSH Check Code Starts Here

echo -e "\e[31;43m*****OpenSSH Configuration Parameters Information*****\e[0m"
fileName17=openSSHConfig_$now.txt
fullPath17=$newDir/$fileName17
#touch fullPath17
echo "*****OPENSSH CONFIGURATION PARAMETER INFORMATION*****" >> $fullPath17
sshdConfigVar=$( cat /etc/ssh/sshd_config || echo "NONE")
if [ "$sshdConfigVar" == "NONE" ]
then 
     	echo "File Not Found"
else
        echo "The OpenSSH Daemon Connfiguration Parameters Is: "
        echo "$sshdConfigVar"
        echo "$sshdConfigVar">>$fullPath17
fi

#1.9 User Login History Check Codes Starts Here

echo -e "\e[31;43m*****User Login History Information*****\e[0m"
fileName18=userLoginHistory_$now.txt
fullPath18=$newDir/$fileName18
#touch fullPath18
echo "*****USER LOGIN INFORMATION*****" >> $fullPath18
loginHistoryVar=$(last -if /var/log/wtmp || echo "NONE")
if [ "$loginHistoryVar" == "NONE" ]
then 
     	echo "Error Detected"
else
    	echo "The recent user login history are as follows: "
        echo "$loginHistoryVar"
        echo "$loginHistoryVar">>$fullPath18
fi

#2.0 Failed Auhentication Attempt History Check Codes Starts Here

echo -e "\e[31;43m*****Failed User Authentication History Information*****\e[0m"
fileName19=failedAuthenticationHistory_$now.txt
fullPath19=$newDir/$fileName19
#touch fullPath19
echo "*****FAILED USER AUTHENTICATION ATTEMMPT INFORMATION*****" >> $fullPath19
failedLoginHistoryVar=$(cat /var/log/auth.log 2>/dev/null|| echo "NONE")
if [ "$failedLoginHistoryVar" == "NONE" ]
then 
     	echo "File Not Found"
else
    	echo "The recent failed user authentication history are as follows: "
        echo "$failedLoginHistoryVar"
        echo "failedLoginHistoryVar">>$fullPath19
fi


#2.1 Authorization Systems Configuration Check Codes Starts Here

echo -e "\e[31;43m*****Authorization Systems Configuration Check Codes Starts Here*****\e[0m"
fileName20=authenticationSystemConfiguration_$now.txt
fullPath20=$newDir/$fileName20
#touch fullPath20
echo "*****AUTH LOG INFORMATION*****" >> $fullPath20
authorizationVar=$(cat /var/log/secure 2>/dev/null|| echo "NONE")
if [ "$authorizationVar" == "NONE" ]
then 
     	echo "File Not Found"
else
    	echo "The System Authentication Logs are as follows: "
        echo "$authorizationVar"
        echo "$authorizationVar">>$fullPath20
fi

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

#2.3 inetd Configuration Check Codes Starts Here

echo -e "\e[31;43m*****inetd Content Information*****\e[0m"
fileName22=inetdConfig_$now.txt
fullPath22=$newDir/$fileName22
#touch fullPath22
if [ -f "/etc/inetd.conf" ]
then
    	inetConfigVar=$(cat /etc/inetd.conf || echo "NONE")
        if [ $inetConfigVar == "NONE" ]
        then 
             	echo "Error Detected"
        else
            	echo "The inet configuration are as follows: "
                echo "$inetConfigVar"
                echo "$inetConfigVar">>$filePath22
fi

else
    	echo "File Cannot Be Found"
fi

#2.4 xinetd Configuration Check Code Starts Here

echo -e "\e[31;43m*****xinetd Content Information*****\e[0m"
fileName23=xinetdConfig_$now.txt
fullPath23=$newDir/$fileName23
#touch fullPath23
echo "*****xinetd Configuration*****" >> $fullPath23
if [ -f "/etc/xinetd.conf" ]
then
    	xinetConfigVar=$(cat /etc/xinetd.d || echo "NONE")
        if [ $xinetConfigVar == "NONE" ]
        then 
             	echo "File Not Found"
        else
            	echo "The xinet configuration are as follows: "
                echo "$xinetConfigVar"
                echo "$xinetConfigVar">>$fullPath23
fi

else
    	echo "File Cannot Be Found"
fi

#2.5 PAM System-Auth Checker Starts Here

echo -e "\e[31;43m*****PAM Authentication System Information*****\e[0m"
fileName24=PamAuthConfig_$now.txt
fullPath24=$newDir/$fileName24
#touch fullPath24
echo "*****PAM Authentication System Configuration*****"
if [ -f "/etc/pam.d/system-auth" ]
then
    	pamSystemVar=$(cat /etc/pam.d/system-auth 2>/dev/null|| echo "NONE")
        if [ "$pamSystemVar" == "NONE" ]
        then 
             	echo "File Not Found"
        else
            	echo "The xinet configuration are as follows: "
                echo "$pamSystemVar"
                echo "$pamSystemVar">>$fullPath24
fi

else
    	echo "File Cannot Be Found"
fi

#2.6 PAM Password-Auth Checker Starts Here

echo -e "\e[31;43m*****PAM Password-Auth Checker *****\e[0m"
fileName25=PamPasswordAuthConfig_$now.txt
fullPath25=$newDir/$fileName25
#touch fullPath25
echo "*****PAM Password-Auth Checker*****" >> $fullPath25
pamPassVar=$(cat /etc/pam.d/password-auth 2>/dev/null|| echo "NONE")
if [ "$pamPassVar" == "NONE" ]
then 
     	echo "File Not Found"
else
    	echo "The Pam Password Auth Configuration are as follows: "
        echo "$authorizationVar"
        echo "$authorizationVar">>$fullPath25
fi

#2.7 Crontab Content Checker Starts Here

echo -e "\e[31;43m*****Crontab Content Information*****\e[0m"
fileName26=crontabContent_$now.txt
fullPath26=$newDir/$fileName26
#touch fullPath26
echo "*****Crontab Content Checker*****" >> $fullPath26
if [ -f "/etc/crontab" ]
then
    	cronTabVar=$(cat /etc/crontab || echo "NONE" )
        if [ "$cronTabVar" == "NONE" ]
        then 
             	echo "File Not Found"
        else
            	echo "The local Crontab is as follows: "
                echo "$cronTabVar"
                echo "$cronTabVar">>$fullPath26
        fi

else
    	echo "File Cannot Be Found"
fi

#2.8 Cron Job List Checker Starts Here

echo -e "\e[31;43m*****Cron Job Content Information*****\e[0m"
fileName27=crontabContent_$now.txt
fullPath27=$newDir/$fileName27
#touch fullPath27
echo "*****Cron Job List Checker*****" >> $fullPath27
cronListVar=$(ls /etc/cron.* || echo "NONE")
if [ "$cronListVar" == "NONE" ]
then 
     	echo "File Cannot Be Found"
else
    	echo "The Cron Configuration Parameter are as follows: "
        echo "$cronListVar"
        echo "$cronListVar" >>$fullPath27
fi

#2.9 Disk Filesystem Checker Code Starts Here

echo -e "\e[31;43m*****Disk Filesystem Information*****\e[0m"
fileName28=diskFS_$now.txt
fullPath28=$newDir/$fileName28
#touch fullPath28
echo "*****Cron Job List Checker*****" >> $fullPath28
dfVar=$(df)
if test -z "$dfVar":
then 
     	echo "Error Detected"
else
    	echo "The Disk File System are as follows: "
        echo "$dfVar"
        echo "$dfVar">>$fullPath28
fi

#3.0 List Recently Opened Files Here

echo -e "\e[31;43m*****Recently Opened Files*****\e[0m"
fileName29=recentlyOpenedFiles_$now.txt
fullPath29=$newDir/$fileName29
#touch fullPath29
echo "*****List Of Recently Opened Files****" >> $fullPath29
lsofVar=$(lsof -i || echo "NONE")
if [ "$lsofVar" == "NONE" ]
then 
     	echo "File Not Found"
else
    	echo "The Configuration Parameter are as follows: "
        echo "$lsofVar"
        echo "$lsofVar">>$fullPath29
fi

#3.1 List Recently Opened Files With A Link Count Less Than 1

echo -e "\e[31;43m*****Recently Opened Files With A Link Count Less Than 1*****\e[0m"
fileName30=recentlyOpenedLessThan1_$now.txt
fullPath30=$newDir/$fileName30
#touch fullPath30
echo "*****List Of Recently Opened Files With A Link Count Less Than 1*****" >> $fullPath30
lsofL1Var=$(lsof +L1 || echo "NONE" )
if [ "$lsofL1Var" == "NONE" ]
then 
     	echo "Error Detected"
else
        echo "The Recently Opened Files With A Link Count Less Than 1 are as follows: "
        echo "$lsofL1Var"
        echo "$lsofL1Var">>$fullPath30
fi

#3.2 Codes to check whether the host network cards are running in promiscous mode
echo -e "\e[31;43m*****Information On Whether The Interface Is In Promiscous Mode*****\e[0m"
fileName31=promMode_$now.txt
fullPath31=$newDir/$fileName31
#touch $fullPath31
echo "*****List Of Recently Opened Files With A Link Count Less Than 1*****" >> $fullPath31
promiscVar=$(grep promisc /var/log/syslog 2>/dev/null|| echo "NONE" )
if [ "$promiscVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The Interfaces That Are Currently In Promiscous Mode are as follows: "
        echo "$lsofL1Var"
        echo "$lsofL1Var">>$fullPath31
fi

#3.3 Codes To Check The Currently Establihed Network Connections To External Servers Starts Here

echo -e "\e[31;43m*****Information On Currently Established Network Connections Starts Here*****\e[0m"
fileName32=netCon_$now.txt
fullPath32=$newDir/$fileName32
#touch $fullPath32
echo "*****List Of Currently Established Network Connections*****" >> $fullPath32
netstatVar=$(netstat -nap || echo "NONE" )
if [ "$netstatVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The Currently Established Network Connections are as follows: "
        echo "$netstatVar"
        echo "$netstatVar">>$fullPath32
fi

#3.4 Codes To Check All The Processes That Are Currently Runnning

echo -e "\e[31;43m*****Information On All Processes That Are Running Is Listed Here*****\e[0m"
fileName33=procRun_$now.txt
fullPath33=$newDir/$fileName33
#touch $fullPath33
echo "*****List Of All Processes That Are Running*****" >> $fullPath33
processesVar=$(ps aux || echo "NONE" )
if [ "$processesVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The Processes that is currently running is as follows: "
        echo "$processesVar"
        echo "$processesVar">>$fullPath33
fi

#3.5 Codes To Check All The Services That Are Currently Running

echo -e "\e[31;43m*****Information On All Services That Are Running Is Listed Here*****\e[0m"
fileName34=svcRun_$now.txt
fullPath34=$newDir/$fileName34
#touch $fullPath34
echo "*****Checking All Services Running*****" >> $fullPath34
servicesVar=$(service --status-all || echo "NONE" )
if [ "$servicesVar" == "NONE" ]
then 
     	echo "No Entry Detected"
else
    	echo "The Services that is currently running is as follows: "
        echo "$servicesVar"
        echo "$servicesVar">>$fullPath34
fi

#3.6 Codes To Check System Uptime Starts Here

echo -e "\e[31;43m*****Information On System Uptime Is Listed Here*****\e[0m"
fileName35=sysUp_$now.txt
fullPath35=$newDir/$fileName35
#touch $fullPath35
echo "*****Checking All Services Running*****" >> $fullPath35
uptimeVar=$(uptime)
if test -z "$uptimeVar":
then 
     	echo "No Entry Detected"
else
    	echo "The Current System Uptime is as follows: "
        echo "$uptimeVar"
        echo "$uptimeVar">>$fullPath35
fi

#3.7 Summary

echo -e "\e[31;43m*****Scan Summary*****\e[0m"
echo "Scan Has Been Completed, The scan summary has been compiled into a txt file with the name as shown below:"
ls -l $newDir
echo "The Directory Will Now Be Zipped Up And Compressed"
archiveName=Compressed_Scan_Logs_$now.tar.gz
tar -cvzf $archiveName $newDir/
echo  "The Name Of The Commpressed GZIP Folder Is: "
echo $archiveName
