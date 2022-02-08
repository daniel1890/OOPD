class Dambord {
  private Damsteen[] damstenenZwart;
  private Damsteen[] damstenenWit;
  int nVakjesHor = 10;
  int nVakjesVert = 10;
  float x, y, hoogte, breedte;

  public Dambord(float x, float y, float hoogte, float breedte) {
    this.hoogte = hoogte;
    this.breedte = breedte;
    damstenenZwart = new Damsteen[20];
    damstenenWit = new Damsteen[20];
  }

  public void tekenDambord() {
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        float vakjeBreedte = this.hoogte / nVakjesHor;
        float vakjeHoogte = this.hoogte / nVakjesVert;
        if ((j % 2 == 0 && i % 2 == 0) || (j % 2 != 0 && i % 2 != 0)) {
          fill(#FFFFFF);
        } else if ((j % 2 == 0 && i % 2 != 0) || (j % 2 != 0 && i % 2 == 0)) {
          fill(#000000);
        }
        rect(0 + (i * vakjeBreedte), 0 + (j * vakjeHoogte), vakjeBreedte, vakjeHoogte);
      }
    }
  }

  public void genereerDamstenen() {
  }
}
