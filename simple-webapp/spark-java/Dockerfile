FROM jeanblanchard/busybox-java

MAINTAINER Jimmy Ong <gnoymmij@gmail.com>

COPY ./target/hello.jar /tmp/hello.jar

EXPOSE 4567

CMD ["java", "-jar", "/tmp/hello.jar"]
