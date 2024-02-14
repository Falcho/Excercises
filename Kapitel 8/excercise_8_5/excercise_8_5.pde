Ball ball1;
Ball ball2;

float grav = 0.1;

void setup() {
  size(200, 200);
  ball1 = new Ball(50, 0, 2);
  ball2 = new Ball(100, 50, 3);
}
void draw() {
  background(100);
  ball1.display();
  ball2.display();
  ball1.gravity();
  ball2.gravity();
  smooth();
}
class Ball {
  float x;
  float y;
  float speed = 0;
  float gravity = 0.1;
  Ball(float tempX, float tempY, float tempSpeed) {
    x = tempX;
    y = tempY;
    speed = tempSpeed;
  }
  void display() {
    fill(175);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 15, 15);
  }
  void gravity() {
    y = y + speed;
    speed = speed + gravity;
    if (y > height) {
      speed = speed*-0.95;
    }
  }
}
