#!/bin/sh
python3 /code/server.py &
envoy -c /etc/crud-envoy.yaml --service-cluster service${SERVICE_NAME}