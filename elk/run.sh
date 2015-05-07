docker run --rm -ti -p 9200:9200 -p 9300:9300 --name es gnoymmij/elasticsearch
docker run --rm -ti -p 5000:5000 -p 5000:5000/udp --link es:elasticsearch gnoymmij/logstash
docker run --rm -ti -p 80:80 gnoymmij/kibana

docker run --rm -v /var/run/docker.sock:/tmp/docker.sock gliderlabs/logspout syslog://192.168.1.100:5000
