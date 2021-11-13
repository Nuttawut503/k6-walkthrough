#!/bin/bash

docker run -d \
  --name grafana \
  -v "$(pwd)"/data/grafana:/var/lib/grafana \
  -p 3000:3000 \
  grafana/grafana
