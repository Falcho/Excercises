void setup() {
  size(255, 255);
  background(0);
}

void draw() {
  background(0);
  //starting point of i should be 0
  int i= 0;
  //while i is less than thewidth of the window
  while (i < width) {
    noStroke();
    float distance = abs(mouseX-i);
    fill(distance);
    rect(i, 0, 10, height);

    //increase i by 10
    i+=10;
  }
}
