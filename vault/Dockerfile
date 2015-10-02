FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U upgrade && apk add openssl

ENV VAULT_VERSION 0.2.0
ENV VAULT vault_${VAULT_VERSION}_linux_amd64

RUN cd /tmp \
    && wget https://dl.bintray.com/mitchellh/vault/$VAULT.zip \
    && unzip $VAULT.zip && mv vault /bin \
    && rm *

RUN apk del openssl && rm -rf /var/cache/apk/*

CMD ["vault"]
