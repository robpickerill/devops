#!/bin/bash

function usage() {
  echo "usage:"
  echo "To run in foreground: ./tunnel.sh [ ssh-username-for-bastion ] [ dev/qa/prod ]"
  echo "To run in background: ./tunnel.sh [ ssh-username-for-bastion ] [ dev/qa/prod ] -d"
  echo "To delete aliases and tunnels: ./tunnel.sh clean"
  echo "To get usage: ./tunnel.sh usage"
}

function process_file() {
file_path="$1"
   while read -r line; do
   echo "$line";
 done < "$file_path"
}

function check_file_exist() {
  if [ -f "$1" ]; then
    :
  else
    echo "File does not exist!"; exit 1
  fi
}

function main() {
  if [ $# -eq 0 ]
  then
    usage
    exit 1
  fi
  check_file_exist "$1"
  process_file "$1"
}

main "$@"
