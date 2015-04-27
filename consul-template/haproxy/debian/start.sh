#!/bin/bash

if [ -z "$CONSUL_HOST" ]; then
	echo >&2 'error: CONSUL_HOST not set'
	exit 1
fi

# start consul-template, in turn will start/reload haproxy on event
$CT_HOME/consul-template -consul $CONSUL_HOST:8500 -template "/tmp/haproxy.ctmpl:/usr/local/etc/haproxy/haproxy.cfg:/tmp/reload.sh"
