# simple webapp: spark-java

An overly simplistic [Spark](http://sparkjava.com/) app that echos "hello".

## Build

This image uses Jean Blanchard's [busybox-java](https://github.com/jeanblanchard/docker-busybox-java).

## Usage

```console
$ # build the maven project first:
$ mvn package

$ # then build this image:
$ docker build -t gnoymmij/simple-webapp .

$ # run it:
$ docker run -dp 4567:4567 gnoymmij/simple-webapp

$ # or use Compose:
$ docker-compose up
```
