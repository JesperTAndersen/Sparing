//03.february
// - first draft, everything hardcoded "finished" except flags. couldnt resize window.

//04,february
//added variables to fonts, colors, and rectangles.
//redid almost everything was coded, due to variables being introduced.

//06. february
//added variables to scaleable fontsize.
//redid coding for text placements.

//14. februar
//added a "for" loop for all rectangles. moved old code to seperate tab.

//16.februar
//added functions for rectangles, and shortened the code for countryBoxes.
//made a function for countryNames.

//18.februar
//added a class for Country. moved old code to a new tab.

//19.februar
//added a class for Group.
//refactored country. made and setup method "setupGroupA/B/C/D"

//20.februar
//cut down on parameters for country.

//21.februar
//setups arrays for groups and countries, and added "for" loops in group Class,  and in main window.

color yellow = color(240, 240, 0);
color cyan = color (82, 204, 227);
color darkBlue = color(0, 0, 60);
float w, h;
Group[] group = new Group[4];

void setup() {
  size(1000, 400);
  w=width;
  h=height;
  

  setupGroupA();
  setupGroupB();
  setupGroupC();
  setupGroupD();
}

void draw() {
  color white = color (255);
  //color darkBlue = color(0, 0, 60);
  background(darkBlue);
  fill(white);
  rect(w/2-1, 0, 3, h);//divider line

  //Display groups
  for (int i = 0; i < group.length; i++) {
    group[i].display();
  }
}

void setupGroupA() {
  Country[] countries = new Country[]{
    new Country("RUSSIA"), new Country("SAUDI ARABIA"), new Country("EGYPT"), new Country("URUGUAY")
  };
  group[0] = new Group(w*.25, h*.07, "GROUP A", cyan, countries);
}
void setupGroupB() {
  Country[] countries = new Country[]{
    new Country("PORTUGAL"), new Country("SPAIN"), new Country("MOROCCO"), new Country("IRAN")
  };
  group[1] = new Group(w*.25, h*.56, "GROUP B", yellow, countries);
}
void setupGroupC() {
  Country[] countries = new Country[]{
    new Country("FRANCE"), new Country("AUSTRALIA"), new Country("PERU"), new Country("DENMARK")
  };
  group[2] = new Group(w*.75, h*.07, "GROUP C", cyan, countries);
}
void setupGroupD() {
  Country[] countries = new Country[]{
    new Country("ARGENTINA"), new Country("ICELAND"), new Country("CROATIA"), new Country("NIGERIA")
  };
  group[3] = new Group(w*.75, h*.56, "GROUP D", yellow, countries);
}
