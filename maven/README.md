# maven

Dokerized [Apache Maven](https://maven.apache.org/), inspired by the [official image](https://registry.hub.docker.com/_/maven/).

## Prerequisite

This image requires the [Java image](https://github.com/gnoymmij/whale/tree/master/java) in this repository. To build this image, you can run `build.sh`.

## Usage

To build a Java Maven project:

```console
$ docker run --rm -v /path/to/src/:/maven gnoymmij/maven mvn package
```

