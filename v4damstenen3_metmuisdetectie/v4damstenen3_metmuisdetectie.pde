int nDamstenen = 4;
Damsteen[] damstenen = new Damsteen[nDamstenen];

void setup() {
  size(400, 400);
  // zet ellipsemode in radius om de juiste diameter van de cirkels te tekenen door de straal van de cirkels te bepalen, hiermee is muisdetectie veel nauwkeuriger
  ellipseMode(RADIUS);
  
  for (int i = 0; i < nDamstenen; i++) {
    // bepaal damsteenkleur
    color damsteenKleur;
    damsteenKleur = ( i < nDamstenen / 2) ? #000000 : #FFFFFF;
    
    // voeg nieuwe damsteen toe aan damstenen array
    float afstandGrootte = 100;
    float x = 50 + (i * afstandGrootte);
    float y = 50 + (i * afstandGrootte);
    Damsteen damsteen = new Damsteen(x, y, 25, damsteenKleur);
    damstenen[i] = damsteen;
  }
}

void draw() {
  background(155);
  
  // teken alle damstenen op het scherm
  for (int i = 0; i < nDamstenen; i++) {
    damstenen[i].detecteerMuisBoven();
    damstenen[i].teken();
  }

}
