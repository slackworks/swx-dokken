#!/bin/bash

if [ 1 -ne $# ]
then
  echo "Usage: `basename $0` <container-id>"
  exit 127
fi

timestamp=$(date +'%Y%m%d_%H%M')

mkdir -p backups/$timestamp/
docker cp $1:/starbound/linux64/universe/ backups/$timestamp/
