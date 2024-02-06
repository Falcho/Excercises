boolean button = true;

int x = 200;
int y = 200;
int w = 100;
int h = 75;

int circleX = 100;
int circleY = 100;

void setup() {
  size(400, 400); // Set the canvas size
}

void draw() {
  background(255);
  if (button) {
    circleX = 100;
    circleY = 100;
  } else {
    circleX = circleX+2;
    circleY = 100;
  }
  fill(175);
  rect(x, y, w, h);
  ellipse(circleX,circleY,50,50);
}
  void mousePressed() {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      button = !button;
    }
  }
