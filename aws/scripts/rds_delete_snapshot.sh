#!/bin/bash

## Author: Yogesh Agrawal
## Email: yogesh.agrawal@capitalfloat.com
## Date: 18-11-2016

## Description: Script to delete RDS snapshots older than retention period

#set -x
set -o nounset

## Define Variables
retention_period="30"  # in days
aws_region="ap-southeast-1"
name_pattern="test"

## get set of snapshots from aws
function getSnapshots ()
{
    local snapshots="$(aws rds describe-db-snapshots --region "$aws_region")"
#local relevant_snapshots="$( echo "$snapshots" | grep '"DBSnapshotIdentifier": "cfdb.*' | awk '{print $2}')"
    local relevant_snapshots="$( echo "$snapshots" | awk -v p="$name_pattern" '$0 ~ "DBSnapshotIdentifier\": \""p".*"' | awk '{print $2}')"
    local set_of_snapshot_identifiers="$(echo "$relevant_snapshots" | sed -e 's/^"//' -e 's/",$//')"
    echo "$set_of_snapshot_identifiers"

}

## get age of snapshot
function getSnapshotAge ()
{
    local snapshot=$1
    local snapshot_timestamp="$(echo "$snapshot" | awk -F'-' '{print $2}')"
    local snapshot_date="${snapshot_timestamp:0:8}"
    local older=$(( ( $(date +%s -d $today) - $(date +%s -d $snapshot_date) ) / 86400 ))
    echo "$older"
}


## delete snapshot
function deleteSnapshot ()
{
   local snapshot=$1
   echo "delete $snapshot"
   #delete-db-snapshot --db-snapshot-identifier
}


## check if the snapshot is to be deleted
function checkToDelete ()
{
    local snapshot=$1
    older=$(getSnapshotAge $snapshot)
    if [[ "$older" -gt "$retention_period" ]];
        then
	    deleteSnapshot "$snapshot"
	else
            echo "please don't delete $snapshot"
    fi   
}

## main function
function main()
{
    today="$(date +"%Y%m%d")"
    set_of_snapshots=$(getSnapshots)
    for snapshot in $set_of_snapshots
    do
	checkToDelete "$snapshot"
    done
}

main
#getSnapshots
#exit 0
