
#!/bin/sh

now=$(date +%Y%m%d_%H%M%S)
echo "$now"
directory=~/Scan_logs_$now
echo "$directory"
mkdir $directory

