#!/bin/bash

read string1
read string2

test -z $string1
if [ $? -eq 0 ]
then
echo "string1 is empty"
else
echo "string1 is not empty"
fi

test -z $string2
if [ $? -eq 0 ]
then
echo "string2 is empty"
else
echo "string2 is not empty"
fi

len1=${#string1}
len2=${#string2}


echo $len1
echo $len2

if [ $len1 -eq $len2 ]
then
echo "length of string1 is equal to string2"
else if [ $len1 -gt $len2 ]
then
echo "string1 is larger than string2"
else
echo "string2 is larger than string1"
fi
fi

if [ $string1 == $string2 ]
then
echo "string1 and string2 are same"
else
echo "string1 and string2 are not same"
fi
