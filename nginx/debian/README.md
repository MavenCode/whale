#nginx

Dockerized [nginx](http://nginx.org/en/) (Mainline) using [official](https://registry.hub.docker.com/_/nginx/) image.

##Usage
Using Compose:

```console
$ docker-compose up
```

##Configuration
Make your configurations in `nginx.conf`. If you screw up the configurations and wish to start over:

```console
$ cp nginx.conf.default nginx.conf
```
