#!/bin/bash

usage(){
    cat <<EOF
Usage:
$ build {base|theia}
EOF
    exit 1
}

[ ! "$1" ] && usage

case $1 in
base)
    TAG=quay.io/lnxjedi/gopherbot-base:latest
    CFILE=base/Containerfile
    ;;
theia)
    TAG=quay.io/lnxjedi/gopherbot-base-theia:latest
    CFILE=theia/Containerfile
    ;;
*)
    usage
    ;;
esac

docker build -f $CFILE -t $TAG .
