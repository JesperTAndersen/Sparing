class Country {
  float x, y, fontScaleable;
  color cSmallBox;
  PFont calibri;
  String countryName;
  PImage flag;

  Country(String _countryName, PImage _flag) {
    countryName = _countryName;
    flag = _flag;
  }

  void display() {
    rectMode(CORNER);
    //White Box
    fill(255);
 
    rect (x, y, width*.485, height*.09);

    //Colored Box
    noStroke();
    fill(cSmallBox);
    rect (x+width*.47, y, width*.015, height*.09);

    for (float i=width*.025; i>0; i--) {
      fill(0, i);
      rect(x+i+width*.05, y, width*.015, height*.09, 2);
    }
    //stroke(0);
    image(flag, x, y, width*.08, height*.091);

    //Text
    textAlign(LEFT);
    calibri = loadFont("Calibri-80.vlw");
    fontScaleable=height*0.1;
    textFont(calibri);
    textSize(fontScaleable);
    fill(0);

    text(countryName, x+width*.1, y+height*.08);
  }
}
