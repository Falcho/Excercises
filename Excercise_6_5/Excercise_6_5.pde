int endY;

void setup() {
  size(400, 800);
  frameRate(10);
  endY = 0;
}

void draw() {
  background(0);
  for (int y = 0; y < endY; y += 15) {
    stroke(255);
    line(0, y, width, y);
  }
  endY += 10;
}
