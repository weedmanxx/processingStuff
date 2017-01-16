PVector pos;

float degrees;

void setup() {
 
  fullScreen();
  
  //noStroke();
  fill(0);
  
  rectMode(CENTER);
  
}

void draw() {
 
  background(255);
  translate(width/2, height/2);
  rotate(radians(degrees));
  line(0, -100, 0, 100);
  
  degrees += map(mouseX, 0, width, 2, 5);
  
}