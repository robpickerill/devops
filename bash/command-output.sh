#!/bin/bash

DBS=`mysql -uroot -e"show databases"`
for db in $DBS; do
mysql -uroot -e"show tables from $db"
done
