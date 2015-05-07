FROM gnoymmij/consul-template

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

RUN apk -U add nginx
RUN rm -rf /var/apk/cache/*

# prepare nginx related stuff
RUN mkdir -p /tmp/nginx/client-body
RUN rm /etc/nginx/*.default && rm -r /usr/html
COPY ./nginx.ctmpl /tmp/nginx.ctmpl

# add start script
COPY ./start.sh /tmp/start.sh

CMD ["sh", "/tmp/start.sh"]
