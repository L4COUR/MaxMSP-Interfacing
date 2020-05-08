# Max/MSP interfacing with Leap Motion (Node for Max)

## Hello World
in order to connect leap motion controller with Max/MSP we are going to use Node for Max in order to create a Socket.io webserver to host a p5.js sketch that we can view in jweb.

First you will have to make sure that node.js is installed on your system. Next up you have to initialize an npm project. This is done by "cd" to the correct directory using the terminal/CMD then you want to type in "npm install". This will download all of the necessay npm package for the code to work.

connect the Leap motion and setup the required drivers

Now open the patch. When interacting with the Leap Motion you should see a visualisation of your hand and a bunch of flashing numbers. 

You are now fully setup, enjoy!

## How it works

Node for Max is used to run the "server.js" script. this uses the express npm library to host a socket.io server where the p5.js sketch can run. moreover it also handles incomming data from the sketch.js file. The data that is being piped through socket is then extracted into max as a dict. The vaious parameters are then routed and displayed, making it easy to hook up for controlling external parameters.

### Server.js

```javascript
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
```

### sketch.js

```javascript
var socket;

function setup() {
	createCanvas(400,400);

  color(255);
  noStroke();

  Leap.loop(drawHand);
  translate(width/2, 2*height/3);

	socket = io.connect('http://localhost:3000');

}


function drawHand(frame) {
  background(0);


  frame.hands.forEach(drawBrush);
}

function drawBrush(hand){

	console.log(hand);

	 var data = {
		 type: hand.type,
		 translation: hand._translation,
		 pinch: hand.pinchStrength,
		 grab: hand.grabStrength
	 }

	 socket.emit('leapMotion',data);

  	ellipse(hand.thumb.tipPosition[0], -hand.thumb.tipPosition[1], 3);
  	ellipse(hand.thumb.dipPosition[0], -hand.thumb.dipPosition[1], 3);
  	ellipse(hand.thumb.pipPosition[0], -hand.thumb.pipPosition[1], 3);
  	ellipse(hand.thumb.tipPosition[0], -hand.thumb.tipPosition[1], 3);
  	ellipse(hand.thumb.mcpPosition[0], -hand.thumb.mcpPosition[1], 3);
  	ellipse(hand.thumb.carpPosition[0], -hand.thumb.carpPosition[1], 3);

  	ellipse(hand.indexFinger.tipPosition[0], -hand.indexFinger.tipPosition[1], 3);
  	ellipse(hand.indexFinger.dipPosition[0], -hand.indexFinger.dipPosition[1], 3);
  	ellipse(hand.indexFinger.pipPosition[0], -hand.indexFinger.pipPosition[1], 3);
  	ellipse(hand.indexFinger.tipPosition[0], -hand.indexFinger.tipPosition[1], 3);
  	ellipse(hand.indexFinger.mcpPosition[0], -hand.indexFinger.mcpPosition[1], 3);
  	ellipse(hand.indexFinger.carpPosition[0], -hand.indexFinger.carpPosition[1], 3);

    ellipse(hand.middleFinger.tipPosition[0], -hand.middleFinger.tipPosition[1], 3);
    ellipse(hand.middleFinger.dipPosition[0], -hand.middleFinger.dipPosition[1], 3);
    ellipse(hand.middleFinger.pipPosition[0], -hand.middleFinger.pipPosition[1], 3);
    ellipse(hand.middleFinger.tipPosition[0], -hand.middleFinger.tipPosition[1], 3);
    ellipse(hand.middleFinger.mcpPosition[0], -hand.middleFinger.mcpPosition[1], 3);
    ellipse(hand.middleFinger.carpPosition[0], -hand.middleFinger.carpPosition[1], 3);

    ellipse(hand.ringFinger.tipPosition[0], -hand.ringFinger.tipPosition[1], 3);
    ellipse(hand.ringFinger.dipPosition[0], -hand.ringFinger.dipPosition[1], 3);
    ellipse(hand.ringFinger.pipPosition[0], -hand.ringFinger.pipPosition[1], 3);
    ellipse(hand.ringFinger.tipPosition[0], -hand.ringFinger.tipPosition[1], 3);
    ellipse(hand.ringFinger.mcpPosition[0], -hand.ringFinger.mcpPosition[1], 3);
    ellipse(hand.ringFinger.carpPosition[0], -hand.ringFinger.carpPosition[1], 3);

    ellipse(hand.pinky.tipPosition[0], -hand.pinky.tipPosition[1], 3);
    ellipse(hand.pinky.dipPosition[0], -hand.pinky.dipPosition[1], 3);
    ellipse(hand.pinky.pipPosition[0], -hand.pinky.pipPosition[1], 3);
    ellipse(hand.pinky.tipPosition[0], -hand.pinky.tipPosition[1], 3);
    ellipse(hand.pinky.mcpPosition[0], -hand.pinky.mcpPosition[1], 3);
    ellipse(hand.pinky.carpPosition[0], -hand.pinky.carpPosition[1], 3);
}

```

### Max-patcher

![](./media/maxpatch-node-for-max.png)

<details>
  <summary>Max/MSP Patch</summary>
<pre><code>
----------begin_max5_patcher----------
1307.3ocyY0zbihCD8r8uBJN6wAIP7QNs6085dY+nlJkLnjPFLPIjyjYmZ9u
uRs.L1QfAahimTCXIDz58TqteM7ykKr2T7Fqx15dq+0ZwhetbwBnKUGKpauv
dK8s3LZELL6b12K17h8J8kDr2DP27hcBl0Sb5llKkl.WPN3u34zzY9tso4YL
A7rv0cVREwOml+zCbVrPOWHgAqcVYg8vpS9tPC4us959GjzhG+jzcI9QIS+X
rsWI+u0WUW8WKWpNrZj3bKqph9D6c.EY.etQSEe9NN.jB8UmHNm.endw2rhM
GSXyexqcHOM1PeFXaP+yxz73mMARzjAoCpqCZ302AMtX6VVt3cH8eLfObfQ7
gFvAEQVSVY44Aa8PQ.9b5EeNyH.9aS.fLU.Pb89r.veYB.noB.Oh6GM.5KN.
1IbM1qMnVVZNKtXWt3f8DbVkD7TQZQ9CFGQGziBNy.jd5S5fHtjO6.jeIJZc
X.NbFYlyH7ZzMHyDfVGD43OHwzE1joBaO2vOQX2SVkc4kz3uY8n5OCa5QtSd
SuOr355CoPQ5TnCjWwsOX9XVAUnRtbzOl+bpBNMuJC71MQASNyZCE3BXOhb8
yrNLbUV383L7LU3h7fzT93aGEtYrGElDwiOyX3nf.EDuQDBljFKVmJXbCPjz
5r9XQtnJ8+fY.Rk.dfswpwlS2Bi0924ozL6S5cWurSzd2t2.bh0uw1tgkXYp
9l8RAFCufuDdwQuqvw8DDiWeDiBKxPQT9OfcFqZ2gTeCITAslgpoHIQTe6cc
8k81IvF7r043HQs+KbkUshffC5TqeJbeeQjF6KAOTChRwVSOPUyJBEZKWM0y
zJ5qrjGj7ujjdfJD7zMx.PUGO4gksN9JJ5kKocoK9Crb5lL1AFa+E2RKKaub
somOeJY1ljMz7mL3NM4hQPPp.8QR34FFAlMyajxhXZ1yEUh6ccbLU77jE2gi
ViUh90Z9wgW2Pl8UPSIY8e7mVulVsilI27ysLUB8zWUCcTw.izG8+.puoGWS
o.8RVdh0NdlIf3YLXGdFSBTuJGne2AQW2E4W9Nyz6nCiGb8SwUpg9rPTd+c2
cnm+cM2JWRqL91hjtwbFfAPRZUdxMJDN4EcRRHtHqfW6+.6Q5dn8d+fK1gyT
Q2LQhNe3IJQNQqCZcd7ButBH5iQph4okBqJQQoIZY5pi8ZDDqDGStMd8nsfj
xMIPFgOyRcpQo+Mg93b4l20MHkwekwW+RkIzdlk1pgIBco00MMQRzchB85VW
sPIrGY7C546p4cOBh.aBuYii9fI.XU8eHaWUriG2Lqq08XsGtIrJQZdG4ksN
QcFz1zjxhzbQsEwPtRWPibP3w+VJPRocXei8wC4I0.0nixXAf563bRDn9XHV
ndbIGqkTUhcRKczz4HtplGvNdPpFhTgQay4lXbGyzU8kTtNDyQSmSPLHmgHF
7EMcUuALK7o74ClAhArD5TVxetrzI2GSlCKMlE6loyGua0QSmVWD2KxzgiYm
N9Zs0IbD6bZdgVtAFZ4Be0l5nMPq2SXnKyqXLDVzL3TLl7U9lcItLD5OlXbd
y.BanoAsTieykkgvaDVBimAKgGyFpASPPHfPBhGTnQsSOz5RmZNSfDLO2Pn5
JGcbgytgvjT27RC2hGOy8NcgzxRoV4p5AC1Pp29Ecwpgqflo45lfJYYUjul1
Ld363XS4RQyBoR1cbcwfu4qeYD1pRp446Rq2aAuiPaPKupvwpRpFHfj+k+Z4
+CDOPm.H
-----------end_max5_patcher-----------
</code></pre>
</details>


## source
- https://www.npmjs.com/package/cylon-leapmotion
- https://github.com/fiebrink1/wekinator_examples/tree/master/inputs/LeapMotion/LeapMotionViaProcessing/LeapMotion_Fingertips_15Inputs
- http://jklabs.net/maxlink/index.html%3Fpage=about.html
- https://github.com/L4COUR/MaxMSP-LeapMotion
