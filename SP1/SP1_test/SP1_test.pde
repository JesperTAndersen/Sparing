float w = width;
float h = height;
color darkBlue = color(0, 0, 100);
color yellow = color(240, 240, 0);
color cyan = color (95, 187, 242);
color white = color (255);


size(1000, 400);
background(darkBlue);
rectMode(CORNER);


for (int i = 8; i>0; i--) {

  //White Boxes
  fill(white);
  rect (w*0.01, 25, w/2.1, h/10);
  rect (w/1.95, 25, w/2.17, h/10);
  stroke(white);
  line (w/2, 0, w/2,h);
  stroke(0);
  //Colored Boxes
  fill(cyan);
  if (i<5) fill(yellow);
  rect (w/2.15, 25, w/40, h/10);
  rect (w/1.035, 25, w/40, h/10);
  
  //Spacing
  translate(0, h/9);
  if (i==5) {
    translate(0, h/17);
  }
}
