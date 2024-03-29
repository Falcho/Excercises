Zoog zoog1;
Zoog zoog2;

void setup() {
  size(800, 800);
  smooth();
  zoog1 = new Zoog(100, 125, 60, 60, 16);
  zoog2 = new Zoog(400, 450, 80, 80, 24);
}

void draw() {
  background(255);
  //mouseX position determines speed factor
  float factor = constrain(mouseX/10, 0, 5);
  zoog1.jiggle(factor);
  zoog1.display();
  zoog2.jiggle(factor);
  zoog2.display();
}

class Zoog {
  //Zoog's variables
  float x, y, w, h, eyeSize;

  //Zoog constructor
  Zoog(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
    x=tempX;
    y=tempY;
    w=tempW;
    h=tempH;
    eyeSize=tempEyeSize;
  }

  //move Zoog
  void jiggle(float speed) {
    //change the location of Zoog randomly
    x = x + random(-1, 1)*speed;
    y = y + random(-1, 1)*speed;

    //constrain Zoog to window
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }
  //Display Zoog
  void display() {
    ellipseMode(CENTER);
    rectMode(CENTER);

    //draw zoog's arms with a for loop
    for (float i = y - h/3; i<Y +h/2; i +=10) {
      stroke(0);
      line(x-w/4, i, x+w/4, i);
    }

    //Draw Zoog's body
    stroke(0);
    fill(175);
    rect(x, y, w/6, h);

    //Draw Zoog's head
    stroke(0);
    fill(255);
    ellipse(x, y-h, w, h);

    //Draw Zoog's eyes
    fill(0);
    ellipse(x-w/3, y-h, eyeSize, eyeSize*2);
    ellipse(x+w/3, y-h, eyeSize, eyeSize*2);

    //Draw Zoog's legs
    stroke(0);
    line(x-w/12, y+h/2, x-w/4, y+h/2+10);
    line(x+w/12, y+h/2, x+w/4, y+h/2+10);
  }
}
