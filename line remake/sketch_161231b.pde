float xOld, yOld, xNew, yNew;

float changeAmount = 20;

boolean ani;

void setup() {
  
  background(255);
  
  size(640, 480);
  
  xOld = random(width); 
  yOld = random(height);
  
}

void draw() {
  
  if(ani) {
  background(255);
  }
  
  newLine();
  
}

void newLine() {
  
  xOld = xNew;
  yOld = yNew;
  
  xNew += random(-changeAmount, changeAmount); 
  yNew += random(-changeAmount, changeAmount); 
  
  if(xNew > width) {
   
    xNew = 0;
    xOld = xNew + random(changeAmount); 
    
  }
  
  if(xNew < 0) {
   
    xNew = width;
    xOld = xNew - random(changeAmount); 
    
  }
  
  if(yNew > height) {
    yNew = 0;
    yOld = yNew + random(changeAmount); 
    
  }
  
  if(yNew < 0) {
    
    yNew = height;
    yOld = yNew - random(changeAmount);
    
  }
  
  line(xOld, yOld, xNew, yNew);
   
  
}


void mousePressed() {
 
  ani = !ani;
  
}