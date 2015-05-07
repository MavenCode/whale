FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U upgrade
RUN apk add curl

ENV CT_VERSION 0.8.0
ENV CT consul-template_${CT_VERSION}_linux_amd64

# download and install Consul Template
RUN mkdir /opt && cd /opt \
    && curl -L https://github.com/hashicorp/consul-template/releases/download/v$CT_VERSION/$CT.tar.gz | tar -xzf - \
    && mv $CT/consul-template /usr/local/bin \
    && rm -rf /opt/*
    
# cleanup and remove no longer needed stuff
RUN apk del curl && rm -rf /var/cache/apk/*
    
CMD ["consul-template", "-version"]
