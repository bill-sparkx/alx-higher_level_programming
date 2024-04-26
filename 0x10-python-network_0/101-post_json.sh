#!/bin/bash

# Check if both URL and filename are provided as arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <URL> <filename>"
    exit 1
fi

# Check if the file exists
if [ ! -f "$2" ]; then
    echo "Error: File '$2' not found."
    exit 1
fi

# Check if the file content is valid JSON
if ! jq . "$2" >/dev/null 2>&1; then
    echo "Not a valid JSON"
    exit 1
fi

# Send a POST request with the file content in the body and display the response
response=$(curl -s -X POST -H "Content-Type: application/json" -d @"$2" "$1")

echo "$response"

