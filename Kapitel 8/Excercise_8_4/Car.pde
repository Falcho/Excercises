Car myCar;

  void setup() {
    size(900, 300);
    smooth();
    myCar = new Car();
  }
  
  void draw(){
   myCar.display();
   myCar.bounce();
   myCar.move();
  }
