//03.february
// - first draft, everything hardcoded. couldnt resize window.

//04,february
//added variables to fonts, colors, and rectangles.
//redid almost everything was coded, due to variables being introduced.

PFont calibri;
PFont calibriB;
color darkBlue = color(0, 0, 60);
color yellow = color(240, 240, 0);
color cyan = color (95, 187, 242);
color white = color (255);
float rectW;
float rectH;
float rectXWhiteL;
float rectXWhiteR;
float rectXCyanL;
float rectXCyanR;
float rectY;
float rectYCyanL;
float rectWCyanW;
float rectwCyanH;
float rectXYellowL;
float rectWYellowW;
float rectwYellowH;
float rectXYellowR;


void setup() {
  size(1000, 400);
  background(darkBlue);
  rectMode(CORNER);

  translate (mouseX, mouseY);

  //white Boxes
  fill(white);

  rectW = width/2-5;
  rectH = height/11;
  rectXWhiteL = width*0;
  rectY = height/10-1;

  //left side
  rect(rectXWhiteL, rectY, rectW, rectH);  // 1
  rect(rectXWhiteL, rectY*2, rectW, rectH);// 3
  rect(rectXWhiteL, rectY*3, rectW, rectH);// 3
  rect(rectXWhiteL, rectY*4, rectW, rectH);// 4
  rect(rectXWhiteL, rectY*6, rectW, rectH);// 5
  rect(rectXWhiteL, rectY*7, rectW, rectH);// 6
  rect(rectXWhiteL, rectY*8, rectW, rectH);// 7
  rect(rectXWhiteL, rectY*9, rectW, rectH);// 8

  //right side
  rectXWhiteR = width/2;

  rect(rectXWhiteR, rectY, rectW, rectH);  // 1
  rect(rectXWhiteR, rectY*2, rectW, rectH);// 2
  rect(rectXWhiteR, rectY*3, rectW, rectH);// 3
  rect(rectXWhiteR, rectY*4, rectW, rectH);// 4
  rect(rectXWhiteR, rectY*6, rectW, rectH);// 5
  rect(rectXWhiteR, rectY*7, rectW, rectH);// 6
  rect(rectXWhiteR, rectY*8, rectW, rectH);// 7
  rect(rectXWhiteR, rectY*9, rectW, rectH);// 8

  //Cyan boxes
  fill(cyan);
  noStroke();

  //Left side
  rectXCyanL = rectXWhiteL+width/2.08;
  rectYCyanL = rectY+1;
  rectWCyanW = rectW/30;
  rectwCyanH = rectH-1;

  rect(rectXCyanL, rectYCyanL, rectWCyanW, rectwCyanH);    //1
  rect(rectXCyanL, rectYCyanL*2-1, rectWCyanW, rectwCyanH);//2
  rect(rectXCyanL, rectYCyanL*3-2, rectWCyanW, rectwCyanH);//3
  rect(rectXCyanL, rectYCyanL*4-3, rectWCyanW, rectwCyanH);//4

  //right side
  rectXCyanR = width/1.02;

  rect(rectXCyanR, rectYCyanL, rectWCyanW, rectwCyanH);    //1
  rect(rectXCyanR, rectYCyanL*2-1, rectWCyanW, rectwCyanH);//2
  rect(rectXCyanR, rectYCyanL*3-2, rectWCyanW, rectwCyanH);//3
  rect(rectXCyanR, rectYCyanL*4-3, rectWCyanW, rectwCyanH);//4


  //yellow boxes
  fill(yellow);
  noStroke();

  //Left side
  rectXYellowL = rectXWhiteL+width/2.08;
  rectWYellowW = rectW/30;
  rectwYellowH = rectH-1;

  rect(rectXYellowL, rectY*6+1, rectWYellowW, rectwYellowH);//1
  rect(rectXYellowL, rectY*7+1, rectWYellowW, rectwYellowH);//2
  rect(rectXYellowL, rectY*8+1, rectWYellowW, rectwYellowH);//3
  rect(rectXYellowL, rectY*9+1, rectWYellowW, rectwYellowH);//4

  //right side
  rectXYellowR = width/1.02;

  rect(rectXYellowR, rectY*6+1, rectWCyanW, rectwYellowH);  //1
  rect(rectXYellowR, rectY*7+1, rectWYellowW, rectwYellowH);//2
  rect(rectXYellowR, rectY*8+1, rectWYellowW, rectwYellowH);//3
  rect(rectXYellowR, rectY*9+1, rectWYellowW, rectwYellowH);//4

  //divider line mid
  stroke(darkBlue);
  strokeWeight(10);
  line(width/2, height*0, width/2, height);

  //divider line mid/white
  stroke(white);
  strokeWeight(2);
  line(width/2, height*0, width/2, height);


  /*
  //venstre side Lande
   calibri = loadFont("Calibri.vlw");
   
   textFont(calibri);
   textSize(40);
   fill(0);
   
   text("RUSSIA", 100, 72);
   text("SAUDI ARABIA", 100, 135);
   text("EGYPT", 100, 203);
   text("URUGUAY", 100, 268);
   text("PORTUGAL", 100, 372);
   text("SPAIN", 100, 435);
   text("MOROCCO", 100, 503);
   text("IRAN", 100, 568);
   
   //højreside lande
   text("FRANCE", 600, 72);
   text("AUSTRALIA", 600, 135);
   text("PERU", 600, 203);
   text("DENMARK", 600, 268);
   text("ARGENTINA", 600, 372);
   text("ICELAND", 600, 435);
   text("CROATIA", 600, 503);
   text("NIGERIA", 600, 568);
   
   */
   calibriB = loadFont("Calibri-Bold.vlw");
   textFont(calibriB);
   
   //Groups Top
   textSize(20);
   fill(cyan);
   text("GROUP A", width/4.5, 25);
   text("GROUP C", width/1.40, 25);
   
   //Groups Bottom
   textSize(20);
   fill(yellow);
   text("GROUP B", width/4.5, 325);
   text("GROUP D", width/1.40, 325);
   
}
