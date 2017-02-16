ArrayList<Snow> snows = new ArrayList<Snow>();

int off;

void setup() {
  
  frameRate(10000);
  
  fullScreen();
  
  
  
}

void draw() {
  
  background(255);
  
  
  
  if(frameCount % 50 == 0) {
    for(int i = 1; i < 10; i++) {
   
      snows.add(new Snow(((random(-5, 5) + i * ( width / 10))) % width, -1));
      
    
    }
    
    off++;
    
  }
  
  for(Snow s : snows) {
   
    s.fall();
    
    if(s.falling) {
     
      for(Snow sw : snows) {
       
        if(dist(s.x, s.y, sw.x, sw.y) < s.d && !(sw.falling)) {
         
          s.falling = false;
          
        }
        
      }
      
    }
    
  }
  
}