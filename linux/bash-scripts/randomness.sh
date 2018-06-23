#!/bin/bash

if [ $# -eq 0 ]
then
echo "Please provide a word as input argument"
exit 1
fi

word=$1
random=$RANDOM
echo $word-$random
exit 0
