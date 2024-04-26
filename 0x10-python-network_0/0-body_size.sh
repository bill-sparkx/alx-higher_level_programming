#!/bin/bash

# Check if the URL is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
URL=$1

# Send a request to the URL using curl and store the response body
response=$(curl -sI "$URL" | grep -i '^content-length:' | awk '{print $2}' | tr -d '\r')

# Check if the response is empty
if [ -z "$response" ]; then
    echo "Error: Failed to retrieve content length"
    exit 1
fi

# Display the size of the response body in bytes
echo "$response"

