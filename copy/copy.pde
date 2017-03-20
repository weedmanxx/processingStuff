float size, i;

void setup() {
  
  size(1000, 1000);
  background(255);
  
  frameRate(6000);
  
  colorMode(HSB);
  
}

void draw() {
 
  //background(255);
  
  //fill((frameCount * 10) % 255, 255, 255);
  noStroke();
  
  i++;
  
  size = abs(100*sin(i / 100));
  
  
  
  //ellipse(50, 50, size, size);
  
  fill(0);
  
  rect(map(mouseX, 0, width, 0, 100), map(mouseY, 0, height, 0, 100), 1, 1);
  
  for(int y = 0; y < height; y += 100) {
   for(int x = 0; x < width; x += 100) {
    
     copy(0, 0, 100, 100, x, y, 100, 100);
     
   }
  }
  
}

void keyPressed() {
 
  background(255);
  
}