FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U upgrade
RUN apk add curl haproxy
RUN rm -rf /var/apk/cache/*

# haproxy home dir
ENV HAP_HOME /etc/haproxy

# specify consul-template version and home dir
ENV VERSION v0.8.0
ENV CT consul-template_0.8.0_linux_amd64
ENV CT_HOME /opt/$CT

# install consul-template
RUN mkdir -p /opt && cd /opt \
	&& curl -LO https://github.com/hashicorp/consul-template/releases/download/$VERSION/$CT.tar.gz \
	&& tar -xzf $CT.tar.gz \
	&& rm $CT.tar.gz

# add haproxy cfg template and reload script
COPY ./haproxy.ctmpl /tmp/haproxy.ctmpl
COPY ./reload.sh /tmp/reload.sh
RUN chmod +x /tmp/reload.sh

# add start script
COPY start.sh /tmp/start.sh

CMD ["sh", "/tmp/start.sh"]
