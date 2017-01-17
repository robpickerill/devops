#!/bin/bash

ls /tmp/exists.txt > /dev/null

echo $?

touch /tmp/exists.txt

ls /tmp/exists.txt > /dev/null

echo $?
