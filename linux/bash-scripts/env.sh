echo "Enter 1 or 2"
read number

if echo $number | egrep -q '^[0-9]+$'; then
if [ $number -eq 1 ]
then
variable=1
export variable
else
variable=2
export variable
fi
else
variable=123
export variable
fi

echo $variable
