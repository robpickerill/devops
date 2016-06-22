#!/bin/bash

program=apache

out=$(df -BG /dev/sda5 | awk '{print $3}' | grep -iv used)

out=${out/G}

echo "Disk usage: $out"

if [ $out -gt 13 ];
then
echo 'disk usage is high!'
pid=$(ps aux | grep $program | awk '{print $2}' | head -1)
echo $pid
else
echo 'disk usage is normal!'
fi
