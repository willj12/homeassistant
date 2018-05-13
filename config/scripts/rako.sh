#!/bin/sh

ROOM=$1
CHANNEL=$2
LEVEL=$3

curl -X POST "http://192.168.20.80/rako.cgi?room=${ROOM}&ch=${CHANNEL}&lev=${LEVEL}" > /dev/null 2>&1
