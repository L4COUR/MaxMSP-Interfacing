function setup() {
    //fullScreen(); //or use createCanvas(250,250);
	createCanvas(400,400);

  color(255);
  noStroke();

  Leap.loop(drawHand);  //define function to call everytime there is a frame from Leap
  translate(width/2, 2*height/3);
}


function drawHand(frame) {   //for each frame, this function is called
  //background(255);
  background(0);


  frame.hands.forEach(drawBrush);
}

function drawBrush(hand){

    //console.log(hand);
    // palmPosition is an array of the palm position in 3D space: [x,y,z]
   // var handX1 = hand.palmPosition[0];
    //var handY1 = -hand.palmPosition[1];



  	ellipse(hand.thumb.tipPosition[0], -hand.thumb.tipPosition[1], 10);
  	ellipse(hand.thumb.dipPosition[0], -hand.thumb.dipPosition[1], 10);
  	ellipse(hand.thumb.pipPosition[0], -hand.thumb.pipPosition[1], 10);
  	ellipse(hand.thumb.tipPosition[0], -hand.thumb.tipPosition[1], 10);
  	ellipse(hand.thumb.mcpPosition[0], -hand.thumb.mcpPosition[1], 10);
  	ellipse(hand.thumb.carpPosition[0], -hand.thumb.carpPosition[1], 10);

  	ellipse(hand.indexFinger.tipPosition[0], -hand.indexFinger.tipPosition[1], 10);
  	ellipse(hand.indexFinger.dipPosition[0], -hand.indexFinger.dipPosition[1], 10);
  	ellipse(hand.indexFinger.pipPosition[0], -hand.indexFinger.pipPosition[1], 10);
  	ellipse(hand.indexFinger.tipPosition[0], -hand.indexFinger.tipPosition[1], 10);
  	ellipse(hand.indexFinger.mcpPosition[0], -hand.indexFinger.mcpPosition[1], 10);
  	ellipse(hand.indexFinger.carpPosition[0], -hand.indexFinger.carpPosition[1], 10);

    ellipse(hand.middleFinger.tipPosition[0], -hand.middleFinger.tipPosition[1], 10);
    ellipse(hand.middleFinger.dipPosition[0], -hand.middleFinger.dipPosition[1], 10);
    ellipse(hand.middleFinger.pipPosition[0], -hand.middleFinger.pipPosition[1], 10);
    ellipse(hand.middleFinger.tipPosition[0], -hand.middleFinger.tipPosition[1], 10);
    ellipse(hand.middleFinger.mcpPosition[0], -hand.middleFinger.mcpPosition[1], 10);
    ellipse(hand.middleFinger.carpPosition[0], -hand.middleFinger.carpPosition[1], 10);

    ellipse(hand.ringFinger.tipPosition[0], -hand.ringFinger.tipPosition[1], 10);
    ellipse(hand.ringFinger.dipPosition[0], -hand.ringFinger.dipPosition[1], 10);
    ellipse(hand.ringFinger.pipPosition[0], -hand.ringFinger.pipPosition[1], 10);
    ellipse(hand.ringFinger.tipPosition[0], -hand.ringFinger.tipPosition[1], 10);
    ellipse(hand.ringFinger.mcpPosition[0], -hand.ringFinger.mcpPosition[1], 10);
    ellipse(hand.ringFinger.carpPosition[0], -hand.ringFinger.carpPosition[1], 10);

    ellipse(hand.pinky.tipPosition[0], -hand.pinky.tipPosition[1], 10);
    ellipse(hand.pinky.dipPosition[0], -hand.pinky.dipPosition[1], 10);
    ellipse(hand.pinky.pipPosition[0], -hand.pinky.pipPosition[1], 10);
    ellipse(hand.pinky.tipPosition[0], -hand.pinky.tipPosition[1], 10);
    ellipse(hand.pinky.mcpPosition[0], -hand.pinky.mcpPosition[1], 10);
    ellipse(hand.pinky.carpPosition[0], -hand.pinky.carpPosition[1], 10);


    // grabStrength is a decimal number between 0 and 1, showing how much I close my hand
    //var color = 300-hand.grabStrength*180;
    //var rad = 6+hand.grabStrength*10;
    //fill(color);
    //stroke(color*2);
    //rect(handX1, handY1, rad, rad);

    //take the direction of the rotation of the hand and draw a line with it
    //palmNormal is an array of the palm direction in 3D space, all between -1 and +1: [x,y,z]
     //println(hand.palmNormal);

    //var lineX2 = handX1+ -hand.palmNormal[0]*100;
    //var lineY2 = handY1+ hand.palmNormal[1]*100;
    //line(handX1, handY1, lineX2, lineY2);

}
