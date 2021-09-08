#!/bin/bash

usage(){
    cat <<EOF
Usage:
$ run {base|theia}
EOF
    exit 1
}

[ ! "$1" ] && usage

case $1 in
base)
    IMAGE=quay.io/lnxjedi/gopherbot-base:latest
    CNAME=gopherbot-base
    OPTIONS="-it"
    ;;
theia)
    IMAGE=quay.io/lnxjedi/gopherbot-base-theia:latest
    CNAME=gopherbot-base-theia
    OPTIONS="-p 127.0.0.1:${LOCALPORT}:3000"
    ;;
*)
    usage
    ;;
esac

docker run $OPTIONS --rm --name $CNAME $IMAGE
