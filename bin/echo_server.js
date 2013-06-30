#!/usr/bin/env node

var http;

http = require('http');

http.createServer(function(req, res) {
  console.log("-----------------");
  console.log("Req Headers ->>>", req.headers);
  console.log("-----------------");
  req.on('data', function(chunk) {
    console.log("Received body data:");
    return console.log(chunk.toString());
  });
  return res.end("");
}).listen(3071);

console.log("Server listening on 3071");
