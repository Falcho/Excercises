int rect1Color = 255;
int rect2Color = 255;
int rect3Color = 255;
int rect4Color = 255;

void setup(){
  size (400,400);
}
void draw() {
  stroke(0);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  
  //Fill a black color
  noStroke();
  fill(0);
  
  if (mouseX<width/2 && mouseY<height/2) {
    rect1Color = 255;
    rect2Color--;
    rect3Color--;
    rect4Color--;
  }
  else if (mouseX>width/2 && mouseY<height/2) {
    rect1Color--;
    rect2Color = 255;
    rect3Color--;
    rect4Color--;
  }
  else if (mouseX<width/2 && mouseY>height/2) {
    rect1Color--;
    rect2Color--;
    rect3Color = 255;
    rect4Color--;
  }
  else if (mouseX>width/2 && mouseY>height/2) {
    rect1Color--;
    rect2Color--;
    rect3Color--;
    rect4Color = 255;

  }
  fill(constrain(rect1Color,0,255));
  rect(0,0,width/2,height/2);
  fill(constrain(rect2Color,0,255));
  rect(width/2,0,width/2,height/2);
  fill(constrain(rect3Color,0,255));
  rect(0,height/2,width/2,height/2);
  fill(constrain(rect4Color,0,255));
  rect(width/2,height/2,width/2,height/2);
}
 
