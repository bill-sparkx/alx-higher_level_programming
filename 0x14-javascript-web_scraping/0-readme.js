#!/usr/bin/node
/*
    This is a simple script that reads a file an
    d prints its content to the console.
*/
const fs = require('fs');
fs.readFile(process.argv[2], 'utf8', (err, data) => {
  if (err) {
    console.log(err);
    return;
  }
  console.log(data);
});
