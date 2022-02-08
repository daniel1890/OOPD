Dambord dambord;

void setup() {
  size(400, 400);
  // zet ellipsemode in radius om de juiste diameter van de cirkels te tekenen door de straal van de cirkels te bepalen, hiermee is muisdetectie veel nauwkeuriger
  ellipseMode(RADIUS);
  dambord = new Dambord(0, 0, 400, 400);

}

void draw() {
  background(155);
  dambord.tekenDambord();


}
