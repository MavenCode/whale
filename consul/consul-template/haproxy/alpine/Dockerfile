FROM gnoymmij/consul-template

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U add haproxy
RUN rm -rf /var/apk/cache/*

# haproxy home dir
ENV HAP_HOME /etc/haproxy

# add haproxy cfg template and reload script
COPY ./haproxy.ctmpl /tmp/haproxy.ctmpl
COPY ./reload.sh /tmp/reload.sh
RUN chmod +x /tmp/reload.sh

# add start script
COPY start.sh /tmp/start.sh

CMD ["sh", "/tmp/start.sh"]
