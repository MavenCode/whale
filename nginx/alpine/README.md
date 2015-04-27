#nginx

Dockerized [nginx](http://nginx.org/en/) (Stable) in [Alpine Linux](https://www.alpinelinux.org/).

##Usage
Using [Compose](https://github.com/docker/compose):

```console
$ docker-compose up
```

##Configuration
Make your configurations in `nginx.conf`. If you screw up the configurations and wish to start over:

```console
$ cp nginx.conf.default nginx.conf
```
