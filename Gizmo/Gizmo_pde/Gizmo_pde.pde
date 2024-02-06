void setup() {
  size(500, 500);
  background(160);
  smooth();
}

void draw() {
  //sets ellipses and rectangles to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  //draw Gizmo's body
  stroke(0);
  fill(50);
  rect(250, 250, 60, 150);

  //draw Gizmo's head
  fill(20, 255, 20);
  ellipse(250, 175, 100, 120);

  //draw Gizmo's eyes
  fill(255);
  ellipse(225, 175, 32, 64);
  ellipse(275, 175, 32, 64);

  //draw Gizmo's legs
  stroke(0);
  strokeWeight(5);
  line(220, 325, 205, 370);
  line(280, 325, 295, 370);
}
