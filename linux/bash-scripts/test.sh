#!/bin/bash

echo "simple calculator"

echo "Enter variables:"
read var1
read var2

echo "Enter number corresponding to operator!"
echo "1. addition"
echo "2. subtraction"
echo "3. multiplication"
echo "4. division"

read operator

if [ $operator -eq 1 ]
then
echo "addition result " $(($var1 + $var2))
elif [ $operator -eq 2 ]
then
echo "subtraction result " $(($var1 - $var2))
elif [ $operator -eq 3 ]
then
echo "multiplication result " $(($var1 * $var2))
elif [ $operator -eq 4 ]
then
echo "division result " $(($var1 / $var2))
else
echo "invalid operator"
fi
