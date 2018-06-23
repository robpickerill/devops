#!/bin/bash

if [ $# -eq 0 ]
then
echo "please provide a number between 1 and 12"
exit 1
fi

month=$1

case $month in
1) echo "Jan";;
2) echo "Feb";;
3) echo "March";;
4) echo "April";;
5) echo "May";;
6) echo "June";;
7) echo "July";;
8) echo "Aug";;
9) echo "Sept";;
10) echo "Oct";;
11) echo "Nov";;
12) echo "Dec";;
*) echo "Please provide a number between 1 and 12"
exit 2
esac

exit 0
