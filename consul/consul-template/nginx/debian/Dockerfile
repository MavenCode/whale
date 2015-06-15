FROM nginx

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apt-get update && apt-get -y install wget

# specify consul-template version and home dir
ENV CT_VERSION v0.10.0
ENV CT_FILE consul-template_0.10.0_linux_amd64.tar.gz
ENV CT_HOME /opt

# install consul-template
RUN cd $CT_HOME \
	&& wget https://github.com/hashicorp/consul-template/releases/download/$CT_VERSION/$CT_FILE \
	&& tar -xzf $CT_FILE --strip-component=1 \
	&& rm $CT_FILE

# prepare nginx related stuff
RUN rm -v /etc/nginx/conf.d/* && rm -r /usr/share/nginx/html
#COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.ctmpl /tmp/default.ctmpl

# add start script
COPY ./start.sh /tmp/start.sh

CMD ["bash", "/tmp/start.sh"]
