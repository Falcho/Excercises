float tieA = random(255);
int speedY = 4;
int speedX = 4;
float gizmoX;
float gizmoY;

void setup() {
  size(500, 500); //sets the size of the window
  gizmoX = width/2;
  gizmoY = height-400;
  smooth(); //this enables anti-aliasing, which smooths the odges of our shapes
  frameRate(30);
}

void draw() {
  background(160); //sets the background dark greyish
  //sets ellipses and rectangles to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  //draw Gizmo's body
  stroke(0);
  strokeWeight(1);
  fill(200);
  rect(gizmoX, gizmoY, 60, 150);

  //draw Gizmo's red tie
  float tieR = random(255);
  float tieG = random(255);
  float tieB = random(255);
  fill(tieR, tieG, tieB);
  quad(gizmoX-10, gizmoY+45, gizmoX, gizmoY-55, gizmoX+10, gizmoY+45, gizmoX, gizmoY+70);

  //draw Gizmo's head
  fill(40, 205, 0);
  ellipse(gizmoX, gizmoY-75, 100, 120);

  //draw Gizmo's eyes
  fill(255);
  ellipse(gizmoX-25, gizmoY-75, 32, 64);
  ellipse(gizmoX+25, gizmoY-75, 32, 64);
  fill(0);
  ellipse(gizmoX-22, gizmoY-70, 8, 16);
  ellipse(gizmoX+22, gizmoY-70, 8, 16);

  //draw Gizmo's arms + legs
  stroke(0);
  strokeWeight(5);
  line(gizmoX-30, gizmoY+75, gizmoX-45, gizmoY+120);
  line(gizmoX+30, gizmoY+75, gizmoX+45, gizmoY+120);
  line(gizmoX-30, gizmoY, gizmoX-45, gizmoY+60);
  line(gizmoX+30, gizmoY, gizmoX+45, gizmoY+60);

  gizmoY = gizmoY+speedY;
  gizmoX = gizmoX+speedX;
  if ((gizmoY > height) || (gizmoY<0)) {
    speedY = speedY*-1;
  }
  if ((gizmoX>width)||(gizmoX<0)) {
    speedX=speedX*-1;
  }
}
