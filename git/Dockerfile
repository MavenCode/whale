FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U upgrade
RUN apk add git
RUN rm -rf /var/cache/apk/* 

RUN mkdir /git
WORKDIR /git

CMD ["/usr/bin/git"]
