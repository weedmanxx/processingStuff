class Spiral {
  
  float x, y, d, a, rate;
  
  Spiral(float dTemp, float aTemp, float rateTemp) {
   
    d = dTemp;
    a = aTemp;
    rate = rateTemp;
  
  }
  
  void display() {
   
    rect(x, y, 5, 5);
    
  }
  
  void update() {
   
    fill(a % 255, 255, 255);
    
    a += rate;
    d += rate;
    
    polToXY();
    
  }
  
  void polToXY() {
   
    x = d * cos(a);
    y = d * sin(a);
    
  }
  
; 
  }