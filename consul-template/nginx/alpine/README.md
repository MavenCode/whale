# Load balancing: nginx and Consul Template
[nginx](http://nginx.org/en/) dynamic reload whenever an upstream server is up or down. A minimal container based on [Alpine Linux](https://www.alpinelinux.org/).

## Prerequisite
A [Consul](https://www.consul.io/) server, [Registrator](https://github.com/gliderlabs/registrator) and this base Consul Template [image](https://github.com/gnoymmij/whale/tree/master/consul-template).

## Usage
Environment for `CONSUL_HOST` needs to be set to the IP address of the Consul server. This can be conveniently set in `docker-compose.yml`. Using [Compose](https://github.com/docker/compose):

```console
$ docker-compose up
```
