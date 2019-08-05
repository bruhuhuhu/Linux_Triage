#!/bin/bash

echo "Scan Has Been Completed, The Output Logs Of The Scan Are As 
Follows: "

ls -l $directory

echo "The Scan Output Will Now Be Compressed Into A GZIP Folder"
archiveName=Compressed_Scan_Logs_$now.tar.gz
tar -cvzf $archiveName $directory/
echo "The Name Of The Compressed GZIP Archive Is: "
echo $archiveName
