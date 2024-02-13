Human myHuman;

void setup(){
  size(200,600);
myHuman = new Human();
}

void draw(){
 myHuman.display();
 myHuman.sleep();
}
