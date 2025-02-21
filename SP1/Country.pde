class Country {
  float x, y, fontScaleable;
  color cSmallBox;
  PFont calibri;
  String countryName;

  Country(String _countryName) {
    countryName = _countryName;
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

    //Text
    textAlign(CORNER);
    calibri = loadFont("Calibri-80.vlw");
    fontScaleable=height*0.1;
    textFont(calibri);
    textSize(fontScaleable);
    fill(0);

    text(countryName, x+width*.1, y+height*.08);
  }
}
