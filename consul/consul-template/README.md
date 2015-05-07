# consul-template

Dockerized [Consul Template](https://github.com/hashicorp/consul-template) in [Alpine Linux](https://www.alpinelinux.org/). This is a base image for containers that wish to include Consul Template for dynamic values population.

# Usage

1. Build this Dockerfile:

```console
$ docker build -t gnoymmij/consul-template .
```

2. Then use this image in your Dockerfile. You may use this [Dockerfile](https://github.com/gnoymmij/whale/blob/master/consul-template/nginx/alpine/Dockerfile) as reference.
