#!/bin/bash

for x in $(ls)
do
ext=${x##*.}
echo $ext
case $ext in
c) echo "$x : c source file";;
sh) echo "$x : bash source file";;
txt) echo "$x : text file";;
*) echo "$x: unknown file type";;
esac
done
