const maxApi = require('max-api');

var Cylon = require('cylon');

Cylon.robot({
  connections: {
    leapmotion: { adaptor: 'leapmotion' }
  },

  devices: {
    leapmotion: { driver: 'leapmotion' }
  },

  work: function(my) {
    my.leapmotion.on('hand', function(payload) {
      //maxApi.outlet(payload.toString());
    });
  }
}).start();

var fs = require('fs')
  , Processing = require('processing')
  , canvas = Processing.createElement('canvas');

  fs.readFile('processing/sketch.pde', function(err, data) {
    var compiled = Processing.compile(data.toString('utf-8'))
      , p5 = new Processing(canvas, compiled)
      , out = fs.createWriteStream('/stream/output.png')
      , stream = canvas.createPNGStream();

    maxApi.outlet(stream.pipe(out));
  });
