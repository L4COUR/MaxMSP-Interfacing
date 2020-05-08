const maxApi = require('max-api');

var express = require('express');

var app = express();
var server = app.listen(3000);

app.use(express.static('p5js-hand'));

var socket = require('socket.io');

var io = socket(server);

io.sockets.on('connection', newConnection);

function newConnection(socket) {
  maxApi.post('new connection: ' + socket.id);

  socket.on('leapMotion', leapMotionData);

  function leapMotionData(hand) {
    maxApi.outlet(hand);
  }
}