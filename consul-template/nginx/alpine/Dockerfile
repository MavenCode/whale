FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U upgrade
RUN apk add curl nginx
RUN rm -rf /var/apk/cache/*

# specify consul-template version and home dir
ENV CT_VERSION v0.8.0
ENV CT consul-template_0.8.0_linux_amd64
ENV CT_HOME /opt/$CT

# install consul-template
RUN mkdir /opt && cd /opt \
	&& curl -LO https://github.com/hashicorp/consul-template/releases/download/$CT_VERSION/$CT.tar.gz \
	&& tar -xzf $CT.tar.gz \
	&& rm $CT.tar.gz

# prepare nginx related stuff
RUN mkdir -p /tmp/nginx/client-body
RUN rm /etc/nginx/*.default && rm -r /usr/html
COPY ./nginx.ctmpl /tmp/nginx.ctmpl

# add start script
COPY ./start.sh /tmp/start.sh

CMD ["sh", "/tmp/start.sh"]
