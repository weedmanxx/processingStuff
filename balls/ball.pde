class Ball {
  
  float x, y, xSpeed, ySpeed, area;
  
  Ball() {
    
    x = random(width);
    y = random(height);
    
    area = 78;
    
    xSpeed = random(-10, 10);
    ySpeed = random(-10, 10);
    
  }
  
  void display() {
    
    
    fill(0);
    ellipse(x, y, sqrt(area / PI), sqrt(area / PI));
    
  }
  
  void move() {
   
    x += xSpeed;
    y += ySpeed;
    
    if(x > width || x < 0) {
     
      xSpeed = -xSpeed;
      
    }
    
    if(y > height || y < 0) {
     
      ySpeed = -ySpeed;
      
    }
    
  }
 
  
  
}