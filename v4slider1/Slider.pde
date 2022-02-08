class Slider {
  private float x, y, breedte, hoogte, sliderBreedte;
  private int nPosities;
  private int sliderPositie;

  public Slider(float x, float y, float breedte, float hoogte, int nPosities) {
    this.x = x;
    this.y = y;
    this.breedte = breedte;
    this.hoogte = hoogte;
    this.nPosities = nPosities;

    this.sliderPositie = 0;
    this.sliderBreedte = this.breedte / this.nPosities;
  }

  public void beweeg() {
    // wanneer de muisX en muisY binnen de slider liggen wordt de sliderpositie bepaalt
    if (mouseX > this.x && mouseX < (this.x + this.breedte)
    && mouseY > this.y && mouseY < (this.y + this.hoogte)) {
      // gebruik de map functie om makkelijk te berekenen op welke positie de slider staat op basis van de muispositie
      this.sliderPositie = floor(map(mouseX - this.x, 0, this.breedte, 0, this.nPosities));
    }
  }

  public void teken() {
    color sliderKleur = #000000;
    color achterGrondKleur = #FFFFFF;
    
    fill(achterGrondKleur);
    rect(this.x, this.y, this.breedte, this.hoogte);
    fill(sliderKleur);
    rect(this.x + (this.sliderPositie * this.sliderBreedte), this.y, this.sliderBreedte, this.hoogte);
  }
}
