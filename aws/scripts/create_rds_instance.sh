#!/bin/bash

## Author: Yogesh Agrawal
## Email: yogesh.agrawal@capitalfloat.com
## Date: 24-11-2016

## Description: Script to create RDS db instance
## Reference: http://docs.aws.amazon.com/cli/latest/reference/rds/create-db-instance.html

#set -x
set -o nounset

## create rds db instance
function createDBInstance ()
{
    local status=$(aws rds create-db-instance --region "$aws_region" --db-instance-identifier "$db_instance_identifier" --allocated-storage "$size" --db-instance-class "$instance_class" --engine "$engine" --master-username "$user_name" --master-user-password "$password")
    echo $status

}

## main function
function main()
{
    echo "Enter aws region (e.g. ap-south-1) : "
    read aws_region

    echo "Enter db instance name (e.g. sanctions-prod-mysql-db) : "
    read db_instance_identifier

    echo "Enter db size in gb : "
    read size

    echo "Enter instance class (e.g. db.t2.micro) : "
    read instance_class

    echo "Enter db engine (e.g. mysql) : "
    read engine

    echo "Enter db user name : "
    read user_name

    echo "Enter db password : "
    read -s password

    status=$(createDBInstance "$aws_region" "$db_instance_identifier" "$size" "$instance_class" "$engine" "$user_name" "$password")

    echo $status

}

main
