FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U upgrade
RUN apk add apache2-utils
RUN rm -rf /var/cache/apk/*

CMD ["/usr/bin/ab"]
