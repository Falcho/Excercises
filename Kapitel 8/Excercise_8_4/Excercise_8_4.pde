class Car {
  int globalX = 0;
  int globalY = height/2;
  int speed = 4;

  void display() {
    background(0);
    drawcar(globalX, globalY, 200, 175);
  }


  void move() {
    //change the speed
    globalX = globalX+speed;
  }

  void bounce() {
    if ((globalX > width) || (globalX < 0)) {
      speed = speed*-1;
    }
  }
  void drawcar(int x, int y, int thesize, color c) {
    // Using a local variable "offset"
    int offset = thesize/4;
    // Draw main car body
    rectMode(CENTER);
    stroke(200);
    fill(c);
    rect(x, y, thesize, thesize/2);
    // Draw four wheels relative to center
    fill(200);
    rect(x - offset, y - offset, offset, offset/2);
    rect(x + offset, y - offset, offset, offset/2);
    rect(x - offset, y + offset, offset, offset/2);
    rect(x + offset, y + offset, offset, offset/2);
  }
}
