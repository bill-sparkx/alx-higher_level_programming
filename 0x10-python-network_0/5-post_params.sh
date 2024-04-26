#!/bin/bash

# Check if the URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Define the POST parameters
email="test@gmail.com"
subject="I will always be here for PLD"

# Send a POST request to the provided URL with the specified parameters using curl
response=$(curl -s -X POST -d "email=$email" -d "subject=$subject" "$1")

# Display the body of the response
echo "$response"

