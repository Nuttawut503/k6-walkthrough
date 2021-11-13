#!/bin/bash

docker run -d \
  --name influxdb \
  -e INFLUX_DB=k6 \
  -e INFLUXDB_HTTP_MAX_BODY_SIZE=0 \
  -v "$(pwd)"/data/influxdb:/var/lib/influxdb \
  -p 8086:8086 \
  influxdb:1.8.10
