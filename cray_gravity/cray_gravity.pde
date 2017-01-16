Circle c;

void setup() {
  
  c = new Circle(100);
  fullScreen();
  
  frameRate(10000);
 
  
}

void draw() {
  
  //background(0);
  
  c.display();
  c.physics();
  c.mouseGravity();
  
}