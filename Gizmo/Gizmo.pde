int speedY = 4;
int speedX = 4;
float gizmoX;
float gizmoY;
float hueValue = 0;

void setup() {
  size(500, 500); //sets the size of the window
  gizmoX = width/2;
  gizmoY = height-400;
  smooth(); //this enables anti-aliasing, which smooths the odges of our shapes
  frameRate(60);
}

void draw() {
  background(160); //sets the background dark greyish
  //calculate the position of the mouse
  float mouseXdist = mouseX - width/2;
  float mouseYdist = mouseY - height/2;
  //Calculate the position of Gizmo, on the opposite side of the mose
  gizmoX = width/2 - mouseXdist;
  gizmoY = height/2 -mouseYdist;

  //sets ellipses and rectangles to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);

  //draw Gizmo's body
  stroke(0);
  strokeWeight(1);
  fill(200);
  rect(gizmoX, gizmoY, 60, 150);

  //draw Gizmo's colorfull tie
  /* float tieR = random(255);
   float tieG = random(255);
   float tieB = random(255);
   fill(tieR, tieG, tieB);*/
  pushStyle(); //Save the current color mode
  colorMode(HSB, 360, 100, 100); //Sets color mode to HSB
  hueValue += 0.5; //Increase the hue value slowly
  hueValue %= 360; //Wrap the hue value to keep it within the valid range (0 to 360)
  int fillColor = color(hueValue, 100, 100); //converts the hue value to a color
  fill(fillColor);
  quad(gizmoX-10, gizmoY+45, gizmoX, gizmoY-55, gizmoX+10, gizmoY+45, gizmoX, gizmoY+70);

  //draw Gizmo's head
  popStyle();
  fill(40, 205, 0);
  ellipse(gizmoX, gizmoY-75, 100, 120);

  //draw Gizmo's eyes
  /* fill(255);
   for (int i = -1; i <= 1; i += 2) {
   ellipse(gizmoX + i * 25, gizmoY - 75, 32, 64);
   fill(0);
   ellipse(gizmoX + i * 22, gizmoY - 70, 8, 16);
   }*/
  fill(255);
  ellipse(gizmoX-25, gizmoY-75, 32, 64);
  ellipse(gizmoX+25, gizmoY-75, 32, 64);
  fill(0);
  ellipse(gizmoX-22, gizmoY-70, 8, 16);
  ellipse(gizmoX+22, gizmoY-70, 8, 16);

  //draw Gizmo's arms + legs
  stroke(0);
  strokeWeight(5);
  line(gizmoX-30, gizmoY+75, gizmoX-45, gizmoY+120); //Left leg
  line(gizmoX+30, gizmoY+75, gizmoX+45, gizmoY+120);//Right leg
  line(gizmoX-30, gizmoY, gizmoX-45, gizmoY+60);//Left arm
  line(gizmoX+30, gizmoY, gizmoX+45, gizmoY+60);//Right arm

  if (mouseX == gizmoX || mouseY == gizmoY) {
    println("Stop touching me!");
  }

  //Making Gizmo bounce around
  /*  gizmoY = gizmoY+speedY;
   gizmoX = gizmoX+speedX;
   if ((gizmoY > height) || (gizmoY<0)) {
   speedY = speedY*-1;
   }
   if ((gizmoX>width)||(gizmoX<0)) {
   speedX=speedX*-1;
   }*/
}
