size(400, 400);
background(255);

//Stripes
/*int y =0;
while (y < height) {
  line(0, y, width, y);
  y = y+10;
}*/

//Circles
int y = 400;
float w = 0;
while (y > 0 ){
  stroke(0);
  fill(200-w);
  ellipse(200,200,y,y);
  w = w+20;
  y = y-40;
}
