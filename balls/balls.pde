ArrayList<Ball> balls = new ArrayList<Ball>();

float i;

void setup() {
  
  
  
  fullScreen();

  //frameRate(5);

  for(int i = 0; i < 1000; i++) {
   
    balls.add(new Ball());
    
  }
  
}

void draw() {
 
  background(255);
  
  for(Ball b : balls) {
    
    b.move();
    b.display();
    
    for(Ball b2 : balls) 
      
     if(b != b2) {
      if((dist(b.x, b.y, b2.x, b2.y) < sqrt(b.area / PI) + sqrt(b2.area / PI ) && b.area >= b2.area)) {
        
        b.area += b2.area;
        
        b.xSpeed -= ((b2.xSpeed * b2.area) / b.area) / 5;
        b.ySpeed -= ((b2.ySpeed * b2.area) / b.area) / 5;
        
        b2.x = random(1000000);
        b2.y = random(1000000);
        
       
      }
     }
    }
    
  }
  