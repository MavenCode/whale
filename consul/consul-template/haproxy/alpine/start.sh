#!/bin/sh

if [ -z "$CONSUL_HOST" ]; then
	echo >&2 'error: CONSUL_HOST not set'
	exit 1
fi

# haproxy pid, used in reload.sh
export PID=/var/run/haproxy.pid

# start consul-template, in turn will start/reload haproxy on event
consul-template -consul $CONSUL_HOST:8500 -template "/tmp/haproxy.ctmpl:$HAP_HOME/haproxy.cfg:/tmp/reload.sh"
