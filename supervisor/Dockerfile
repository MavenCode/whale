FROM gnoymmij/java

MAINTAINER jimmy ong

# install Supervisor to manage the spark app process
RUN apk -U add supervisor
RUN mkdir -p /var/log

# add a configuration file for Supervisor
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 4567

COPY ./hello-spark.jar /tmp/hello-spark.jar

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
