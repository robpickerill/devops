#!/bin/bash

function usage() {
  echo "usage:"
  echo "To run in foreground: ./tunnel.sh [ ssh-username-for-bastion ] [ dev/qa/prod ]"
  echo "To run in background: ./tunnel.sh [ ssh-username-for-bastion ] [ dev/qa/prod ] -d"
  echo "To delete aliases and tunnels: ./tunnel.sh clean"
  echo "To get usage: ./tunnel.sh usage"
}

function main() {
  if [ $# -eq 0 ]
  then
    usage
    exit 1
  fi
}

main "$@"
