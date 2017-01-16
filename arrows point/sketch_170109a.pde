PVector[] lines;
PVector mousePos;


void setup() {

  fullScreen();
  lines = new PVector[15];
  
  for(int i = 0; i < lines.length; i++) {
   
    lines[i] = new PVector((i * 100) + 50, height/2);
    
  }
  
  background(0);
  stroke(255);
  
}

void draw() {
  
  background(0);
  
  
  
  
  for(int i = 0; i < lines.length; i++) {
   
   translate(lines[i].x, lines[i].y);
    
   ellipse(0, 0, 5, 5); 
   
   
   mousePos = new PVector(mouseX, mouseY);
   mousePos.sub(lines[i]); 
   
   mousePos.normalize();
   mousePos.mult(50);
   
   line(mousePos.x, mousePos.y, 0, 0);
   
   translate(-lines[i].x, -lines[i].y);
   
   
  
      
  }
  
  
  
}