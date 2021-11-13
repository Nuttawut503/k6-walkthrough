k6 tutorial

```sh
docker run -i --rm loadimpact/k6 run - < scripts/filename.js
```

with influxdb and grafana
```sh
docker compose up influxdb grafana

# send results via
docker compose run --rm k6 run - < scripts/filename.js
```

default grafana account
```
user: admin
password: admin
```

Dashboard ID for k6 Load Testing Results: 2587
