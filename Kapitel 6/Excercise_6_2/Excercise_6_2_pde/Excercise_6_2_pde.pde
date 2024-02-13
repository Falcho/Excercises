
//Linjer
/*size (400,400);
background(255);

for (int y = 0; y <=400; y=y+10){
  line(0,y,width,y);
}*/

//Cirkler
size(400,400);
background(255);
int y = 400;
float w = 200;

for (; y > 0; y -= 40, w -= 20) {
  stroke(0);
  fill(w);
  ellipse(200, 200, y, y);
}
