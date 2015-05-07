FROM alpine

MAINTAINER Jimmy Ong

# install Supervisor to manage the spark app process
RUN apk -U upgrade
RUN apk -U add openjdk7-jre
RUN apk -U add supervisor

# supervisor log dir
RUN mkdir -p /var/log

# add a configuration file for Supervisor
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 4567

COPY ./hello-spark.jar /tmp/hello-spark.jar

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
