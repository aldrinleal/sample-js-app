#!/usr/bin/env node

var express = require('express');
var app = express();

var port = process.env.PORT || 3000;

app.get('/', function (req, res) {
  res.send(JSON.stringify({
  	version: process.version
  }) + '\n');
});

app.get('/memory', function (req, res) {
  res.send(JSON.stringify({
  	version: process.memoryUsage()
  }) + '\n');
});

var server = app.listen(port, function () {

  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening at http://%s:%s', host, port);
});