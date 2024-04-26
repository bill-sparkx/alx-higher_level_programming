#!/bin/bash

# Send a POST request with a specific header to make the server respond with "You got me!"
curl -s -X PUT -L -d "user_id=98" -H "Origin: HolbertonSchool" 0.0.0.0:5000/catch_me -H "Referer: 0.0.0.0:5000/catch_me"

