class Snow {
  
  float x, y, d;
  
  boolean falling  = true;
  
  Snow(float _x, float _y) {
    
    x = _x;
    y = _y;
    
    d = 5;
    
  }
  
  void fall() {
   
    fill(255);
    ellipse(x, y, d, d);
    
    if(falling) {
    
    y++;
    
    }
    
    if(y >= height - 5) {
      
     falling = false;
      
    }
    
  }
  
  
}