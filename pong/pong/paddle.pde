class Paddle {
  
  float x, y, w, h;
  
  Paddle(float xTemp) {
    
   y = height/2;
   x = xTemp; 
   w = 6; 
   h = 134;
    
  }
  
  void display() {
   
     noStroke();
     rect(x, y, w, h);
    
  }
  
 
}