
int i;

void setup() {
    
   size(640, 480);
   background(255);
   noStroke();
   frameRate(1000);
  
}

void draw() {
  
  //background(255);
  
 for(int y = 0; y < width; y++) {
    for(int x = 0; x < height; x++) {
     
      if(dist(x, y, width/2, height/2) < 100) {
       
        if(y < mouseY + 10 && y > mouseY - 10) {
         
         fill(0);
         
       }
       
       
        
        rect(x, y, 1, 1);
        
      } else {
        
       fill(128); 
       //rect(x, y, 1, 1); 
        
      }
      
    }
   } 
  
}