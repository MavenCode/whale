FROM haproxy

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

ENV PID /var/run/haproxy.pid
ENV CFG /usr/local/etc/haproxy/haproxy.cfg

# create a pid file
RUN touch $PID

COPY ./haproxy.cfg $CFG

# graceful reloading
CMD haproxy -f $CFG -p $PID -sf $(cat $PID)
