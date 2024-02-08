
void setup() {
  size(400, 400);
  smooth();
  frameRate(1);
}
  void draw(){
  int rows = 20; //number of rows
  int coloumns = 20; //number of coloumns
  int squareSize = width/coloumns; //need i explain?

  for (int i=0; i <rows; i++) {
    for (int j=0; j<coloumns; j++) {
      int x =j*squareSize;
      int y =i*squareSize;
      color random = color(random(255), random(255), random(255));

      fill(random);
      rect(x, y, squareSize, squareSize);
    }
  }
}
