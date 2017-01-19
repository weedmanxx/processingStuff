
void setup() {
 
  fullScreen();
  
  textSize(25);
  
}

void draw() {
  
  background(255); 
  
  noFill();
  triangle(100, height - 100, mouseX, height - 100, 100, mouseY);
  
  fill(0);
  text("Side A: " + abs(100 - mouseX) + " Side B: " + abs(height - 100 - mouseY) + " Side C: " + round(sqrt(pow(abs(height - 100 - mouseY), 2) + pow(abs(100 - mouseX), 2) )) , 50, height - 50);
  
}