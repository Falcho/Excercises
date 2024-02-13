class Human {
  color hairColor;
  float tallnes;
  
  Human(){
   hairColor = color(100,75,0);
   tallnes = 184.0;
  }
  
  void display(){
   ellipseMode(CENTER);
   fill(255);
   ellipse(width/2,height/2-75,50,50);
   line(width/2,height/2-50,width/2,height/2+50);
   line(width/2,height/2-25,width/2-30,height/2+25);
   line(width/2,height/2-25,width/2+30,height/2+25);
   line(width/2,height/2+50,width/2-30,height/2+100);
   line(width/2,height/2+50,width/2+30,height/2+100);
  }

  void sleep() {
    boolean sunIsUp = true;
    if (sunIsUp) {
      print("I'm Awake");
      noLoop();
    }
  }
}
