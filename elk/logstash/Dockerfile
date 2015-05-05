FROM jeanblanchard/busybox-java
#from gnoymmij/java

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

ENV VERSION 1.4.2
ENV LOGSTASH logstash-$VERSION
ENV LOGSTASH_HOME /opt/$LOGSTASH

#RUN apk -U add curl
RUN opkg-install ca-certificates

RUN mkdir -p /opt && cd /opt \
    && curl -L https://download.elastic.co/logstash/logstash/$LOGSTASH.tar.gz | gunzip - | tar -xf -
   # && apk del curl && rm -rf /var/cache/apk/*

RUN opkg-cl remove ca-certificates
COPY logstash.conf $LOGSTASH_HOME/logstash.conf

CMD $LOGSTASH_HOME/bin/logstash -f /$LOGSTASH_HOME/logstash.conf
