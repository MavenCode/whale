# maven
Dockerized [Apache Maven](https://maven.apache.org/) in [Alpine Linux](https://www.alpinelinux.org/), inspired by the [official image](https://registry.hub.docker.com/_/maven/).

## Prerequisite
This image requires the [Java image](https://github.com/gnoymmij/whale/tree/master/java) in this repository. To build this image, you can run `build.sh`.

## Usage
To build a Java Maven project:
```console
$ docker run --rm -v /path/to/src/:/maven gnoymmij/maven mvn package
```

## Persisting artifacts
Using the [data-only container pattern](https://docs.docker.com/userguide/dockervolumes/#creating-and-mounting-a-data-volume-container), you can persist artifacts downloaded and save time when building the same maven project subsequently. To create a data-only container, create the following Dockerfile:
```
FROM busybox
VOLUME /repo
CMD ["/bin/sh"]
```

Next, build and run:
```console
$ docker build -t mvnrepo-container .
$ docker run --name mvnrepo mvnrepo-container
```

Using the `volumes-from` flag, build a Java Maven project:
```console
$ docker run --rm -ti --volumes-from mvnrepo -v /path/to/src/:maven gnoymmij/maven mvn package
```
