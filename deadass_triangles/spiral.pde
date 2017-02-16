class Spiral {
 
  float x, y, rate, a, d;
  
  Spiral(float intX, float intY, float r, float aOff) {
    
    x = intX;
    y = intY;
    rate = r;
    
    a = aOff;
    d = 0;
    
  }
  
  void spiral() {
    
    a++;
    d++;
    
    x = d * cos(a);
    y = d * sin(a);
    
  }
  
}