#!/bin/bash
# Author: iH0118
# this script is officially gay

while getopts 'h:' OPTION; do
  case "$OPTION" in
    h)
      echo "you have supplied the -
            h option"
      ;;
    ?)
      echo "script usage: $(basename \$0) [-l] [-h] [-a somevalue]" >&2
      exit 1
      ;;
  esac
done
shift "$(($OPTIND -1))"