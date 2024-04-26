#!/bin/bash

# Check if the URL is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
URL=$1

# Send a GET request to the URL using curl and store the response body
response=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

# Check if the response status code is 200
if [ "$response" -eq 200 ]; then
    # Display the body of the response
    curl -s "$URL"
else
    echo "Error: Response status code is not 200"
fi


