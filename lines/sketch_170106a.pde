
int offset;
int space;
int speed;
int speedIn;

void setup() {
 
  fullScreen();

  
  background(255);
  fill(0);
  
  space = 10;
  speedIn = 8;
  speed = int(space/map(speedIn, 0, 10, 0, 4));
  
  
}

void draw() {
  
  background(255);
  
   for(int i = 0; i < width; i++) {
    
     line(i * space + offset, 0, i * space + offset, height);
     
   }
   
   offset += speed;
   
   if(offset > space) {
    
     offset = 0;
     
   }
   
   
  
  
}