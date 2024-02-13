int x = 0;
int speed = 2;
int y = height/2;

void setup() {
  size(200, 200);
  smooth();
}

void move() {
  x = x + speed;
}

void bounce() {
  if ((x > width) || (x<0)) {
    speed = speed*-1;
  }
}

void display() {
  background(255);
  rectMode(CENTER);
  noFill();
  stroke(0);
  rect(x, y, 32, 32);
  fill(255);
  rect(x-4, y-4, 4, 4);
  rect(x+4, y-4, 4, 4);
  line(x-4, y+4, x+4, y+4);
}


void draw() {
  background(255);
  move();
  bounce();
  display();
}
