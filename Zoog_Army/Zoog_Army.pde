Zoog[] zoogies = new Zoog[200];

void setup() {
  size(600, 600);
  smooth();
  for (int i=0; i<zoogies.length; i++) {
    zoogies[i] = new Zoog(random(width), random(height), 30, 30, 8);
  }
}

void draw() {
  background(255);
  for (int i=0; i<zoogies.length; i++) {
    zoogies[i].display();
    zoogies[i].jiggle();
  }
}

class Zoog {
  //Zoog's variables
  float x, y, w, h, eyeSize;

  //Zoog constructor
  Zoog(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    eyeSize = tempEyeSize;
  }

  //move Zoog
  void jiggle() {
    //change location
    x = x+random(-1, 1);
    y = y+random(-1, 1);

    //constrain zoog to window
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  //Display Zoog
  void display() {
    ellipseMode(CENTER);
    rectMode(CENTER);

    //Draw Zoog's arms with a for loop
    for (float i= y-h/3; i<y+h/2; i+=10) {
      stroke(0);
      line(x-w/4, i, x+w/4, i);
    }

    //Draw Zoog's body
    stroke(0);
    fill(175);
    rect(x, y, w/6, h);

    //draw Zoog's head
    stroke(0);
    fill(255);
    ellipse(x, y-h, w, h);

    //Zoogs eyes
    fill(0);
    ellipse(x-w/3, y-h, eyeSize, eyeSize*2);
    ellipse(x+w/3, y-h, eyeSize, eyeSize*2);

    //Zoog's legs
    stroke(0);
    line(x-w/12, y+h/2, x-w/4, y+h/2+10);
    line(x+w/12, y+h/2, x+w/4, y+h/2+10);
  }
}
