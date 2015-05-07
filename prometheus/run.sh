# run prometheus server:
docker run -p 9090:9090 -v $PWD/prometheus.conf:/etc/prometheus/prometheus.conf prom/prometheus

# run cAdvisor - metrics for all docker containers; alternative for prom/container-exporter
docker run --rm -v /:/rootfs:ro -v /var/run:/var/run:rw -v /sys:/sys:ro -v /var/lib/docker/:/var/lib/docker:ro -p 8080:8080 google/cadvisor

# run promdash - 2 steps:
docker run -p 3000:3000 -v /tmp/prom:/tmp/prom -e DATABASE_URL=sqlite3:/tmp/prom/file.sqlite3 prom/promdash ./bin/rake db:migrate
docker run -p 3000:3000 -v /tmp/prom:/tmp/prom -e DATABASE_URL=sqlite3:/tmp/prom/file.sqlite3 prom/promdash

# alert manager
# TODO
