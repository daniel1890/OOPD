class Damsteen {
  private float x, y, diameter, straal;
  private color kleur;
  private boolean isGeselecteerd;

  public Damsteen(float x, float y, float diameter, color kleur) {
    this.x = x;
    this.y = y;
    this.kleur = kleur;
    this.diameter = diameter;
    
    this.straal = diameter / 2;
    this.isGeselecteerd = false;
  }

  public void detecteerMuisBoven() {
    float afstandX = mouseX - this.x; // bepaal verschil tussen muisX en middenpunt van de damsteen
    float afstandY = mouseY - this.y; // bepaal verschil tussen muisY en middenpunt van de damsteen
    // vermenigvuldig afstandX en afstandY met hunzelf en tel deze uitkomsten op, hierna wordt dit resultaat in de wortel gedaan om de correcte afstand als uitkomst te krijgen
    double afstandMuisVanMiddenpunt = Math.sqrt(afstandX * afstandX + afstandY * afstandY);

    // als de afstand tussen de muis en het middenpunt van de damsteen kleiner is dan de straal van de damsteen
    // dan is de damsteen geselecteerd 
    this.isGeselecteerd = afstandMuisVanMiddenpunt <= this.straal;
  }

  public void teken() {
    if (isGeselecteerd) {
      strokeWeight(5);
      stroke(kleur);
    } else {
      noStroke();
    }
    fill(this.kleur);
    circle(this.x, this.y, this.straal);
  }
}
