#!/bin/bash

set -x
if [ $# -lt 3 ]
then
echo "please provide input in the following format: a number1 number2"
exit 1
else
choise=$1
number1=$2
number2=$3
fi

if echo $choise | egrep -q 'a'
then
echo $?
echo $choise | egrep -q 'a'
echo $choise | egrep -q 'b'
echo $?
answer=$(( $number1 + $number2 ))
else if echo $choise | egrep -q 'm'
then
answer=$(( $number1 * $number2 ))
else if echo $choise | egrep -q 's'
then
answer=$(( $number1 - $number2 ))
else if echo $choise | egrep -q 'd'
then
answer=$(( $number1 / $number2 ))
fi
fi
fi
fi

echo $answer
set +x
