FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

ENV VERSION 1.5.2
ENV ES elasticsearch-$VERSION

RUN apk -U add openjdk7-jre curl

RUN mkdir /opt && cd /opt \
    && curl -L https://download.elastic.co/elasticsearch/elasticsearch/$ES.tar.gz | tar -xzf - \
    && sed -i '$ a\ http.cors.enabled: true' /opt/$ES/config/elasticsearch.yml

RUN apk del curl && rm -rf /var/cache/apk/*

CMD /opt/$ES/bin/elasticsearch
