#!/bin/bash 

#0.1 Creating The Initial Output File

echo "1"
now=$(date +%Y%m%d_%H%M%S)
echo "$now"
newDir=~/Scan_logs_$now
echo "$newDir"
mkdir $newDir