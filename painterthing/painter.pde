class Painter {
 
 float x, y, xInc, yInc, size, sizeInc, alpha, r, g, b, rgbInc;
  
  Painter(float _x, float _y, float _xInc, float _yInc, float _size, float _sizeInc, float _alpha, float _r, float _g, float _b, float _rgbInc) {
    
     x = _x;
     y = _y;
     
     xInc = _xInc;
     yInc = _yInc;
     
     size = _size;
      
     
     sizeInc = _sizeInc;
     
     
     alpha = _alpha;
     
     r = _r;
     g = _g;
     b = _b;
     
     rgbInc = _rgbInc;
     
     
    
  }
  
  void paint() {
    
   fill(r, g, b, alpha); 
   rect(x, y, size, size);
   
   r += random(-rgbInc, rgbInc);
   g += random(-rgbInc, rgbInc);
   b += random(-rgbInc, rgbInc);
   
  }
  
  void move() {
   
    x += random(-xInc, xInc);
    y += random(-yInc, yInc);
    
    size += random(-sizeInc, sizeInc);
    
    if(x > width) {
     
      x = 0;
      
    } else if(x < 0) {
     
      x = width;
      
    } else if(y > height) {
     
      y = 0;
      
    } else if(y < 0) {
      
      y = height; 
      
    }
    
    if(size > 100) {
      
      size = 100;
      
    } else if(size < -100) {
     
      size = -100;
      
    }
      
    
  }
  
  
}