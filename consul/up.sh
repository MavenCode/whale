#!/bin/bash

usage="Usage: $0 hostname ip"

# if no args specified, show usage
[ $# -ne 2 ] && { echo $usage; exit 1; }

HOST_NAME=$1
HOST_IP=$2

docker run --rm -p 8400:8400 -p 8500:8500 -p 8600:53/udp -h $HOSTNAME progrium/consul -server -bootstrap -advertise $HOST_IP -ui-dir /ui
