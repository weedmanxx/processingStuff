
Painter[] painters;

void setup() {
  
  frameRate(10000);
  fullScreen();
  background(255);
  
  rectMode(CENTER);
  
  noStroke();
  
  painters = new Painter[1000];
  
  for(int i = 0; i < painters.length; i++) {
   
                  //float x, y, xInc, yInc, size, sizeInc, alpha, r, g, b, rgbInc;
    painters[i] = new Painter(random(width), random(height), 5, 5, 20, 5, random(255), random(255), random(255), random(255), 10);
    
  }
  
}

void draw() {
 
  for(int i = 0; i < painters.length; i++) {
   
    painters[i].paint();
    painters[i].move();
  
  }
  
}