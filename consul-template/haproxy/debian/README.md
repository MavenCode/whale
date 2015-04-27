#Load balancing: nginx and Consul Template
[HAProxy](http://www.haproxy.org/) dynamic reload whenever an upstream server is up or down. Based on [official HAProxy image](https://registry.hub.docker.com/_/haproxy/).

##Prerequisite
A [Consul](https://www.consul.io/) server and [Registrator](https://github.com/gliderlabs/registrator).

##Usage
Environment for `CONSUL_HOST` needs to be set to the IP address of the Consul server. This can be conveniently set in `docker-compose.yml`. Using [Compose](https://github.com/docker/compose):

```console
$ docker-compose up
```
