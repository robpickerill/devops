#!/bin/bash

echo "Enter the absolute path of the file to be read"
read file
exec 4<$file
exec <&4 # redirects stdin to a file
while read line
do
echo "$line"
done
