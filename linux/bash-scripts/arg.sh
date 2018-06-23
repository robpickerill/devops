#!/bin/bash

if [ $# -eq 0 ]
then
echo "please provide directory name as input argument"
exit 1
fi

dir=$1
echo $dir

exit 0

