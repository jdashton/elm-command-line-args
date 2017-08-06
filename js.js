#!/usr/bin/env node

var args = process.argv.slice(2);

var elm = require('./main');

var worker = elm.Main.worker();
worker.ports.stdout.subscribe(function(line) {
  console.log(line);
});

worker.ports.stdin.send(args);
