#!/usr/bin/node
/**
 *  A script that prints the title of a Star Wars movie
 * The episode number matches a given integer.
 */
const request = require('request');
const episode = process.argv[2];
const url = 'https://swapi-api.hbtn.io/api/films/';
request(url + episode, function (error, response, body) {
  if (error) {
    console.log(error);
  } else {
    console.log(JSON.parse(body).title);
  }
});
