float halfHeight;
int counter;
int direction;

void setup(){
size(800,800);
smooth();

  halfHeight = height/2;
  direction = 5;
}

void draw(){
  background(179);
  fill(0);
  counter = counter+direction;
  direction = counter%width==0 ? direction*-1 : direction;
  
  ellipse(counter, halfHeight,40,40);
  
  
}
