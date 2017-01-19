float xm, ym;

void setup() {

  fullScreen();
  background(255);
  
}

void draw() {
   
  translate(width/2, height/2);
  
  line(-width, 0, width, 0);
  line(0, height, 0, -height);
  
  for(int y = -height/2; y < height/2; y++) {
   for(int x = -width/2; x < width/2; x++) {
    
     if(pow(2, x) == y) {
     rect(x, -y, 1, 1);
     }
   }
    
  }
  
}