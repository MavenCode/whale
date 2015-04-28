FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U upgrade
RUN apk add curl
RUN apk add ca-certificates

ENV GLIBC_URL https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64
ENV GLIBC glibc-2.21-r2.apk
ENV GLIBC_BIN glibc-bin-2.21-r2.apk

# download and install required x86_64 glibc binaries
RUN cd /tmp \
	&& curl -O $GLIBC_URL/$GLIBC \
	&& curl -O $GLIBC_URL/$GLIBC_BIN \
	&& apk add --allow-untrusted $GLIBC $GLIBC_BIN \
	&& /usr/glibc/usr/bin/ldconfig /lib /usr/glibc/usr/lib \
	&& rm glibc* && unset GLIBC GLIBC_BIN GLIBC_URL

ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 45
ENV JAVA_VERSION_BUILD 14

# download and install Java
RUN mkdir /opt && cd /opt \
	&& curl -jkSLH "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz | tar -xzf -

# set JAVA_HOME	
ENV JAVA_HOME /opt/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}
ENV PATH $PATH:$JAVA_HOME/bin

# cleanup and remove no longer needed stuff
RUN apk del curl ca-certificates && rm -rf /var/cache/apk/*

# unset environment variables
RUN unset GLIBC GLIBC_BIN GLIBC_URL

CMD ["java", "-version"]
