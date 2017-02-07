class Ball {
  
  float x, y, xSpeed, ySpeed, size;
  
  Ball(float _x, float _y, float _size) {
    
    x = _x;
    y = _y;
    
    size = _size;
    
    xSpeed = random(-10, 10);
    ySpeed = random(-10, 10);
    
  }
  
  void display() {
    
    
    fill(0);
    ellipse(x, y, size, size);
    
  }
  
  void move() {
   
    x += xSpeed;
    y += ySpeed;
    
    if(x > width - size/2 || x < size/2) {
     
      xSpeed = -xSpeed;
      
    }
    
    if(y > height - size/2 || y < size/2) {
     
      ySpeed = -ySpeed;
      
    }
    
  }
 
  
}