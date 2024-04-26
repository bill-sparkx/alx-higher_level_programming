#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send an OPTIONS request to the provided URL using curl and display the Allow header
curl -s -i -X OPTIONS "$1" | grep -i allow | cut -d ':' -f2- | tr -d '\r' | sed 's/^[ \t]*//'


