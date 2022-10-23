#!/bin/bash
# mentifz-wordcloud.sh
# Author: iH0118
# this script is officially gay


## THIS IS VERY INCOMPLETE BTW


while getopts 'h' OPTION; do
  case "$OPTION" in
    h)
      echo "Usage: mentifz-wordcloud.sh [options] <input data>

            "
      ;;
    ?)
      echo "script usage: $(basename \$0) [-l] [-h] [-a somevalue]" #>&2
#      exit 1
      return 1
      ;;
  esac
done
shift "$(($OPTIND -1))"

# get votekey from vote-id
getvotekey(){
  echo `curl -m 30 https://www.menti.com/core/vote-ids/$1/series | grep -o 'vote_key":"[0-9a-z]*' | sed 's/vote_key":"//'`
}

# get public key from votekey
getpubkey() {
  echo `curl -m 30 https://www.menti.com/core/vote-keys/$1/series | grep -o 'public_key":"[0-9a-f]*' | sed 's/public_key":"//'`
#  echo `curl -m 30 https://www.menti.com/core/vote-ids/$1/series | grep -o 'public_key":"[0-9a-f]*' | sed 's/public_key":"//'`
}



#echo 'test'
