#/bin/bash

if [ $# -ne 2 ]; then
        echo "./du.sh $pool $image"
        exit
fi

rbd diff $1/$2 | awk '{SUM += $2} END {print SUM/1024/1024}'
