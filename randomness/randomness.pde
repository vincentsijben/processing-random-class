RandAnywhere randomMovement, randomColor;

void setup() {
  size(200, 200);
  frameRate(10);

  // no parameters used, so default seeds will be millis()
  randomMovement = new RandAnywhere();
  randomColor = new RandAnywhere();
}

void draw() {
  background(240);

  //we need to set a random seed for the random colors or they will produce new colors
  //every time the draw loops.
  //comment the next line to see that happen:
  randomColor.randomSeed(1);

  for (int i=0; i < 3; i++) {
    for (int j=0; j < 3; j++) {
      int x = i * 50 + 50 + int(randomMovement.random(-5, 5));
      int y = j * 50 + 50 + int(randomMovement.random(-5, 5));
      float gray = randomColor.random(255);
      fill(gray);
      ellipse(x, y, 10, 10);
    }
  }
}
