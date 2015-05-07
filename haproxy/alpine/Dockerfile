FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U upgrade
RUN apk add haproxy
RUN rm -rf /var/apk/cache/*

# haproxy home dir
ENV HAP_HOME /etc/haproxy

# add haproxy cfg template
COPY ./haproxy.cfg $HAP_HOME/haproxy.cfg

CMD haproxy -f $HAP_HOME/haproxy.cfg
