#ab

Dockerized [ApacheBench](http://httpd.apache.org/docs/2.4/programs/ab.html).

###Usage
See `bench.sh` for sample usage. Example:
``` 
$ bash bench.sh http://www.example.com/
```
Or use [Compose](https://github.com/docker/compose):
```
$ docker-compose up
```
Remember to change the necessary parameters if using Compose.
