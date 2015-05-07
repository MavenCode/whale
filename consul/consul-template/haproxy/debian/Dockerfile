FROM haproxy

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apt-get update && apt-get -y install ca-certificates wget

# haproxy home dir
ENV HAP_HOME /usr/local/etc/haproxy

# specify consul-template version and home dir
ENV CT_VERSION v0.8.0
ENV CT_FILE consul-template_0.8.0_linux_amd64.tar.gz
ENV CT_HOME /opt

# install consul-template
RUN cd $CT_HOME \
	&& wget https://github.com/hashicorp/consul-template/releases/download/$CT_VERSION/$CT_FILE \
	&& tar -xzf $CT_FILE --strip-component=1 \
	&& rm $CT_FILE

# prepare haproxy related stuff
COPY ./haproxy.ctmpl /tmp/haproxy.ctmpl
COPY ./reload.sh /tmp/reload.sh
RUN chmod +x /tmp/reload.sh
RUN touch /var/run/haproxy.pid

# add start script
COPY start.sh /tmp/start.sh

CMD ["bash", "/tmp/start.sh"]
