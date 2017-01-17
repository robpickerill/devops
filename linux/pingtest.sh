#!/bin/bash

ip=$1

if [ ! -z $ip ]
then
ping -c 1 $ip > /dev/null
if [ $? -eq 0 ]
then
echo "Machine is reachable and running!"
else
echo "Machine is not reachable!"
fi
else
echo "IP address is not provided!"
fi
