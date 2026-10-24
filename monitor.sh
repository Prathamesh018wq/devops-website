#!/bin/bash

URL="http://localhost:8085"

echo "Checking DevOps Website..."

STATUS=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$URL")

if [ "$STATUS" = "200" ]; then
    echo "PASS: Website is HEALTHY (HTTP $STATUS)"
else
    echo "FAIL: Website is DOWN (HTTP $STATUS)"
fi
