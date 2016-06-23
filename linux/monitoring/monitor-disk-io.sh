#!/bin/bash

source monitor.conf

out=$(df -BG /dev/sda5 | awk '{print $3}' | grep -iv used)

out=${out/G}

date >> $logfile
echo "Disk usage: $out" >> $logfile

if [ $out -gt $threshold ];
then
echo 'disk usage is high!' >> $logfile
pid=$(ps cax | grep $program | awk '{print $1}' | head -1)
if [ $? -eq 0 ];
then
echo "Process $program with pid- $pid, is throttling the disk resource!" >> $logfile
else
echo "Some process is throttling the disk resource!" >> $loggile
fi
else
echo "disk usage is normal!" >> $logfile
fi

echo >> $logfile
