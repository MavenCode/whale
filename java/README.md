# java
[Oracle Server JRE](http://www.oracle.com/technetwork/java/javase/overview/index.html) in [Alpine Linux](https://www.alpinelinux.org/), taking references from:
- https://github.com/gliderlabs/docker-alpine/issues/11
- https://github.com/jeanblanchard/docker-busybox-java/blob/master/Dockerfile

## Usage
Build this Dockerfile:

```console
$ docker build -t gnoymmij/java .
```

Then use this image in your Dockerfile. Example:

```console
FROM gnoymmij/java

COPY MyJavaClass.java /tmp/MyJavaClass.java
RUN cd /tmp && java MyJavaClass.java

CMD cd /tmp && java MyJavaClass
```
