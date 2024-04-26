#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a GET request to the provided URL with custom header X-School-User-Id: 98 using curl
response=$(curl -s -X GET -H "X-School-User-Id: 98" "$1")

# Display the body of the response
echo "$response"

