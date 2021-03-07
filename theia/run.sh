#!/bin/bash

LOCALPORT=${1:-3000}

docker run -p 127.0.0.1:${LOCALPORT}:3000 --rm --name theia-base quay.io/lnxjedi/gopherbot-base-theia:latest
