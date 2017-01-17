#!/bin/bash

cd /var/not &> /dev/null
echo $?
cd $(pwd) $> /dev/null
echo $?
