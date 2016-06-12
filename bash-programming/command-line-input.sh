#!/bin/bash

if [ -z $1 ]; then
    echo usage $0: directory
    exit
fi
SRCD=$1
TRGTD=/var/backup
OF=$(date +%Y%m%d).gz
tar -zcf $TRGTD$OF $SRCD
