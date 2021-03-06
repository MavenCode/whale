#!/bin/sh

if [ -z "$CONSUL_HOST" ]; then
	echo >&2 "error: CONSUL_HOST not set"
	exit 1
fi

# start nginx
nginx

# start consul-template
consul-template -consul $CONSUL_HOST:8500 -template "/tmp/nginx.ctmpl:/etc/nginx/nginx.conf:nginx -s reload"
