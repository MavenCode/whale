FROM jimmy/java

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U add curl

ENV M3_VERSION 3.3.1
RUN cd /opt && curl -L http://www.eu.apache.org/dist/maven/maven-3/$M3_VERSION/binaries/apache-maven-${M3_VERSION}-bin.tar.gz | tar -xzf -
RUN apk del curl && rm -rf /var/cache/apk/*

ENV M3_HOME /opt/apache-maven-$M3_VERSION
ENV PATH=$PATH:$M3_HOME/bin

WORKDIR /maven

CMD ["mvn", "-version"]
