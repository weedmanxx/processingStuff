class Circle {
  
  PVector pos;
  PVector veloc;
  PVector accel;
  
  float force;
  
  Circle(float f) {
    
    pos = new PVector(width/2, height/2);
    veloc = new PVector(0, 0);
    accel = new PVector(0, 0);
    
    veloc.limit(10);
    
    force = f;
    
    force = map(force, 1, 100, .01, .2);
    
  }
  
  void display() {
   
    ellipse(pos.x, pos.y, 10, 10);
    
  }
  
  void physics() {
   
    veloc.add(accel);
    pos.add(veloc);
    
  }
  
  void mouseGravity() {
   
    if(pos.x > mouseX) {
     
      accel = new PVector(-force, 0);
      
    } else if(pos.x < mouseX) {
      
      accel = new PVector(force, 0);
      
    }
    
    if(pos.y > mouseY) {
     
      accel = new PVector(accel.x, -force);
      
    } else if(pos.y < mouseY) {
      
      accel = new PVector(accel.x, force);
      
    }
    
    
    
  }
  
}