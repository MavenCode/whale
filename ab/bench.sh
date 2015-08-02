#!/bin/bash

usage="Usage: $0 url"

# if no args specified, show usage
[ $# -eq 0 ] && { echo $usage; exit 1; }

export BENCH_HOST=$1
export REQUESTS=10000
export CONCURRENCY=100

docker build -t jimmy/ab .
docker run --rm jimmy/ab ab -k -n $REQUESTS -c $CONCURRENCY $BENCH_HOST
