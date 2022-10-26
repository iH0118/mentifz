#!/bin/bash
# mentifz-wordcloud.sh
# Author: iH0118
# this script is officially gay


## THIS IS VERY INCOMPLETE

VOTEID=
VOTEKEY=
COUNT=
PUBKEY=

while getopts 'hk:' OPTION; do
  case "$OPTION" in
    h)
      echo "Usage: mentifz-wordcloud.sh [options] <input data>
            -k  vote key / vote id
            -c  number of 
            "
      ;;
    k)
      
      ;;

    
    ?)
      echo "Usage: mentifz-wordcloud.sh [options] <input data>" #>&2
#      exit 1
      return 1
      ;;
  esac
done

shift "$OPTIND"
#shift "$(($OPTIND -1))"

# get votekey from vote-id
getvotekey(){
  echo `curl -m 30 https://www.menti.com/core/vote-ids/$1/series | grep -o 'vote_key":"[0-9a-z]*' | sed 's/vote_key":"//'`
}

# get public key from votekey
getpubkey() {
  echo `curl -m 30 https://www.menti.com/core/vote-keys/$1/series | grep -o 'public_key":"[0-9a-f]*' | sed 's/public_key":"//'`
}

# get public key from vote-id
getpubkey_id() {
  echo `curl -m 30 https://www.menti.com/core/vote-ids/$1/series | grep -o 'public_key":"[0-9a-f]*' | sed 's/public_key":"//'`
}



#echo 'test'
