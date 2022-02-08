Slider[] sliders = new Slider[2];

void setup() {
  size(800, 600);
  sliders[0] = new Slider(50, 50, 200, 50, 20);  
  sliders[1] = new Slider(50, 250, 400, 100, 100);
}

void draw() {
  background(155);
  sliders[0].beweeg();
  sliders[0].teken();
  sliders[1].beweeg();
  sliders[1].teken();
}
