#!/bin/bash
#3.7 Summary
echo -e "\e[31;43m*****Scan Summary*****\e[0m"
echo "Scan Has Been Completed, The scan summary has been compiled into a txt file with the name as shown below:"
ls -l $newDir
echo "The Directory Will Now Be Zipped Up And Compressed"
archiveName=Compressed_Scan_Logs_$now.tar.gz
tar -cvzf $archiveName $newDir/
echo  "The Name Of The Commpressed GZIP Folder Is: "
echo $archiveName
