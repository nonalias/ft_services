FROM alpine:latest

RUN apk add grafana --repository=http://dl-3.alpinelinux.org/alpine/edge/testing/


EXPOSE 3000
COPY start.sh /tmp/
COPY config/dashboards /var/lib/grafana/dashboards/
COPY config/provisioning/dashboards/dashboards.yaml /usr/share/grafana/conf/provisioning/dashboards/
COPY config/provisioning/datasources/influxdb.yaml /usr/share/grafana/conf/provisioning/datasources/
COPY config/grafana.ini /etc/grafana/grafana.ini

ENTRYPOINT ["sh", "/tmp/start.sh"]
