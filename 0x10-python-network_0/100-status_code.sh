#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a request to the provided URL and display only the status code
curl -s -o /dev/null -w "%{http_code}" "$1"

