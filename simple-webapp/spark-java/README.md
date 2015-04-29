# simple webapp: spark-java

An overly simplistic [Spark](http://sparkjava.com/) app that echos "hello".

## Build

This image uses Jean Blanchard's [busybox-java](https://github.com/jeanblanchard/docker-busybox-java).

## Usage

```console
$ docker run -dp 4567:4567 gnoymmij/simple-webapp
```

Or if using [Compose](https://github.com/docker/compose):
```console
$ docker-compose up
```

