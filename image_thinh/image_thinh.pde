PImage pic1 = new PImage();
PImage pic2 = new PImage();

PImage output = new PImage();

void setup() {
  
  pic1 = loadImage("1.jpg");
  pic2 = loadImage("2.jpg");
  output = loadImage("blank.png");
  
  pic1.resize(width, height);
  pic2.resize(width, height);
  output.resize(width, height);
  
  checkerMerge();
  
  fullScreen();
  
}

void draw() {
 
  image(output, 0, 0);
  
}

void checkerMerge() {
 
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
     
      color c;
      
      if(x % 2 == 0) {
       
        c = pic1.get(x, y);
        
      } else {
        
        c = pic2.get(x, y);       
        
      }
     
      output.set(x, y, c); 
      
   }
  }
  
  
}