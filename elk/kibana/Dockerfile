FROM alpine

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

ENV VERSION 3.1.2
ENV KBN kibana-$VERSION

RUN apk -U add nginx curl

RUN cd /tmp && curl -L https://download.elastic.co/kibana/kibana/$KBN.tar.gz | tar -xzf - \
    && cp -r $KBN/* /usr/html \
    && rm -rf /tmp/*

RUN apk del curl && rm -rf /var/cache/apk/*

RUN mkdir -p /tmp/nginx/client-body

CMD ["nginx","-g", "daemon off;"]
