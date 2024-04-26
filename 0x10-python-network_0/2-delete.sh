#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Send a DELETE request to the provided URL using curl
response=$(curl -s -X DELETE "$1")

# Display the body of the response
echo "$response"

