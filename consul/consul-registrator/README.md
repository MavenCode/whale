# consul-registrator

Simple `docker-compose.yml` to easily run a [Consul](https://www.consul.io/) server using Jeff Lindsay's [Consul Agent](https://github.com/progrium/docker-consul) and Gliderlabs' [Registrator](https://github.com/gliderlabs/registrator).

Using [Compose](https://github.com/docker/compose):

```console
$ docker-compose up
```

Remember, the `-advertise` flag need to set it to the docker host IP address.
