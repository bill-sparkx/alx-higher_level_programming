#!/usr/bin/node
/**
 * This script stores the contents of a webpage in a file.
 */
const request = require('request');
const fs = require('fs');
request(process.argv[2], function (error, response, body) {
  if (!error) {
    fs.writeFile(process.argv[3], body, 'utf8', (err) => {
      if (err) {
        console.log(err);
      }
    });
  }
});
