#!/bin/bash
counter=0
while [ $counter -lt 10 ]; do
echo the counter is: $counter
((counter++))
done
