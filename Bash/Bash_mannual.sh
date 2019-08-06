#!/bin/bash

#Calling 0.1_InitialFiles.sh
chmod +x ./Bash/Modules/0.1_InitialFiles.sh
. ./Bash/Modules/0.1_InitialFiles.sh
logDirectory=$newDir
echo $logDirectory

#Calling 0.2_HostName.sh
chmod +x ./Bash/Modules/0.2_HostName.sh
. ./Bash/Modules/0.2_HostName.sh
echo $var1

#Calling 0.3_SSHHostKey.sh
chmod +x ./Bash/Modules/0.3_SSHHostKey.sh
. ./Bash/Modules/0.3_SSHHostKey.sh
echo $hostKeyVar

#Calling 0.4_OSVersionCheck.sh
chmod +x ./Bash/Modules/0.4_OSVersionCheck.sh
. ./Bash/Modules/0.4_OSVersionCheck.sh
echo $versionVar

#Calling 0.5_HostFile.sh
chmod +x ./Bash/Modules/0.5_HostFile.sh
. ./Bash/Modules/0.5_HostFile.sh
echo $hostVar

#Calling 0.6_DHCPClient.sh
chmod +x ./Bash/Modules/0.6_DHCPClient.sh
. ./Bash/Modules/0.6_DHCPClient.sh
echo $dhClientVar

#Calling 0.7_LogDirectory.sh
chmod +x ./Bash/Modules/0.7_LogDirectory.sh
. ./Bash/Modules/0.7_LogDirectory.sh
echo $logDirVar

#Calling 0.8_SysTimezone.sh
chmod +x ./Bash/Modules/0.8_SysTimezone.sh
. ./Bash/Modules/0.8_SysTimezone.sh
echo $timezoneVar

#Calling 0.9_SysTimezoneDirectory.sh
chmod +x ./Bash/Modules/0.9_SysTimezoneDirectory.sh
. ./Bash/Modules/0.9_SysTimezoneDirectory.sh
echo $timeZonesVar2

#Calling 1.0_PasswdFile.sh
chmod +x ./Bash/Modules/1.0_PasswdFile.sh
. ./Bash/Modules/1.0_PasswdFile.sh
echo $passwdVar

#Calling 1.1_SudoersList.sh
chmod +x ./Bash/Modules/1.1_SudoersList.sh
. ./Bash/Modules/1.1_SudoersList.sh
echo $sudoVar

#Calling 1.2_GroupList.sh
chmod +x ./Bash/Modules/1.2_GroupList.sh
. ./Bash/Modules/1.2_GroupList.sh
echo $groupVar

#Calling 1.3_UserAcctPara.sh
chmod +x ./Bash/Modules/1.3_UserAcctPara.sh
. ./Bash/Modules/1.3_UserAcctPara.sh
echo $parameterVar

#Calling 1.4_UserAddPara.sh
chmod +x ./Bash/Modules/1.4_UserAddPara.sh
. ./Bash/Modules/1.4_UserAddPara.sh
echo $userAddVar

#Calling 1.5_SysEnv.sh
chmod +x ./Bash/Modules/1.5_SysEnv.sh
. ./Bash/Modules/1.5_SysEnv.sh
echo $systemEnvironmentVar

#Calling 1.6_SkelDirectory.sh
chmod +x ./Bash/Modules/1.6_SkelDirectory.sh
. ./Bash/Modules/1.6_SkelDirectory.sh

#Calling 1.7_TerminalSec.sh
chmod +x ./Bash/Modules/1.7_TerminalSec.sh
. ./Bash/Modules/1.7_TerminalSec.sh
echo $secureTtyVar

#Calling 1.8_OpenSSH.sh
chmod +x ./Bash/Modules/1.8_OpenSSH.sh
. ./Bash/Modules/1.8_OpenSSH.sh
echo $sshdConfigVar

#Calling 1.9_UserLoginHistory.sh
chmod +x ./Bash/Modules/1.9_UserLoginHistory.sh
. ./Bash/Modules/1.9_UserLoginHistory.sh
echo $loginHistoryVar

#Calling 2.0_FailedAuthenticationHist.sh
chmod +x ./Bash/Modules/2.0_FailedAuthenticationHist.sh
. ./Bash/Modules/2.0_FailedAuthenticationHist.sh
echo $failedLoginHistoryVar

#Calling 2.1_AuthenticationSystemsConfigCheck.sh
chmod +x ./Bash/Modules/2.1_AuthenticationSystemsConfigCheck.sh
. ./Bash/Modules/2.1_AuthenticationSystemsConfigCheck.sh
echo $authorizationVar

#Calling 2.2_AuthenticationSystemsConfigCheck.sh
chmod +x ./Bash/Modules/2.2_AuditLogs.sh
. ./Bash/Modules/2.2_AuditLogs.sh
echo $auditLogVar

#Calling 2.3_inetdConfig.sh
chmod +x ./Bash/Modules/2.3_inetdConfig.sh
. ./Bash/Modules/2.3_inetdConfig.sh
echo $inetConfigVar

#Calling 2.4_xinetdConf.sh
chmod +x ./Bash/Modules/2.4_xinetdConf.sh
. ./Bash/Modules/2.4_xinetdConf.sh
echo $xinetConfigVar

#Calling 2.5_PamAuth.sh
chmod +x ./Bash/Modules/2.5_PamAuth.sh
. ./Bash/Modules/2.5_PamAuth.sh
echo $pamSystemVar

#Calling 2.6_PamPassword.sh
chmod +x ./Bash/Modules/2.6_PamPassword.sh
. ./Bash/Modules/2.6_PamPassword.sh
echo $pamPassVar

#Calling 2.7_CrontabContent.sh
chmod +x ./Bash/Modules/2.7_CrontabContent.sh
. ./Bash/Modules/2.7_CrontabContent.sh
echo $cronTabVar

#Calling 2.8_CronJobList.sh
chmod +x ./Bash/Modules/2.8_CronJobList.sh
. ./Bash/Modules/2.8_CronJobList.sh
echo $cronListVar

#Calling 2.9_diskFS.sh
chmod +x ./Bash/Modules/2.9_diskFS.sh
. ./Bash/Modules/2.9_diskFS.sh
echo $dfVar

#Calling 3.0_RecentlyOpenedFiles.sh
chmod +x ./Bash/Modules/3.0_RecentlyOpenedFiles.sh
. ./Bash/Modules/3.0_RecentlyOpenedFiles.sh
echo $lsofVar

#Calling 3.1_RecentlyOpenedFilesLinkCount.sh
chmod +x ./Bash/Modules/3.1_RecentlyOpenedFilesLinkCount.sh
. ./Bash/Modules/3.1_RecentlyOpenedFilesLinkCount.sh
echo $lsofL1Var

#Calling 3.2_promMode.sh
chmod +x ./Bash/Modules/3.2_promMode.sh
. ./Bash/Modules/3.2_promMode.sh
echo $promiscVar

#Calling 3.3_EstablishedConnections.sh
chmod +x ./Bash/Modules/3.3_EstablishedConnections.sh
. ./Bash/Modules/3.3_EstablishedConnections.sh
echo $netstatVar

#Calling 3.4_RunningProcesses.sh
chmod +x ./Bash/Modules/3.4_RunningProcesses.sh
. ./Bash/Modules/3.4_RunningProcesses.sh
echo $processesVar

#Calling 3.5_RunningServices.sh
chmod +x ./Bash/Modules/3.5_RunningServices.sh
. ./Bash/Modules/3.5_RunningServices.sh
echo $servicesVar

#Calling 3.6_SysUptime.sh
chmod +x ./Bash/Modules/3.6_SysUptime.sh
. ./Bash/Modules/3.6_SysUptime.sh
echo $uptimeVar

#Calling 3.7_Summary.sh
chmod +x ./Bash/Modules/3.7_Summary.sh
. ./Bash/Modules/3.7_Summary.sh
echo $archiveName























