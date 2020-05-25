#!/usr/bin/env bash
cur_dir=`pwd`

type=$1

if [[ "$type" == "" ]]; then
    echo "Please input the doc type: $0 docute|docsify"
    exit 0
fi

function start(){
    cd $1
    python -m http.server 3000
    cd $cur_dir
}

start $*