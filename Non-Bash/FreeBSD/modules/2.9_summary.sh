#!/bin/sh

echo "The Scan Has Been Completed, the output logs of the scan are as follows: "

ls -l $directory

echo "The scan output logs will now be scanned into a GZIP archive."
archivename=/root/Compressed_Scan_Logs_$now.tar.gz
tar -cvzf $archivename $directory
echo "The Name Of The Compressed GZIP Archive Is: "
echo "$archivename"


