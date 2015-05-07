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
	&& apk add --allow-untrusted $GLIBC \
	&& curl -O $GLIBC_URL/$GLIBC_BIN \
	&& apk add --allow-untrusted $GLIBC_BIN \
	&& /usr/glibc/usr/bin/ldconfig /lib /usr/glibc/usr/lib \
	&& rm glibc*

# download and install nodejs

RUN mkdir /opt && cd /opt \
	&& curl http://nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz | tar -xzf -
	
CMD []
