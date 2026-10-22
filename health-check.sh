#!/bin/bash

for port in 8082 8083
do
    echo "Checking port $port..."

    status=$(curl -s -o /dev/null -w "%{http_code}" \
        --max-time 5 "http://localhost:$port")

    if [ "$status" = "200" ]; then
        echo "PASS: Website on port $port is healthy"
    else
        echo "FAIL: Website on port $port returned $status"
    fi
done
