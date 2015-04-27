#consul

Simple bash script and `docker-compose.yml` to easily run a [Consul](https://www.consul.io/) server using Jeff Lindsay's [Consul Agent](https://github.com/progrium/docker-consul).

##Usage
If using the bash script `up.sh`:

```console
$ bash up.sh hostname 1.2.3.4
```
where `1.2.3.4` is the docker host IP address and `hostname` can be arbitrary.

If using [Compose]():

```console
$ docker-compose up
```

Remember, the `-advertise` flag need to set it to the docker host IP address.
