#!/bin/bash

usage="Usage: $0 git_repo_url"

# if no args specified, show usage
[ $# -eq 0 ] && { echo $usage; exit 1; }

docker build -t jimmy/git .
docker run --rm -ti -v $PWD/git:/git jimmy/git git clone $1

exit
