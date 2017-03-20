PImage image = new PImage();
PImage adjImage = new PImage();

int mx;

void setup() {
  
fullScreen();   
frameRate(600);

image = loadImage("hamburger.jpg");
image.resize(width, height);  
  
//likeIfItWasBlackAndWhiteButItsPurpleInstead(); 
  
}

int i;

void draw() {  
  
  translate(width/2, height/2);
  
  rotate(i);
  i++;
  
  image(adjImage, -width/2, -height/2);  

  
  
  //if(mouseX != mx) {
  
  //  gray();

  //}

mx = mouseX;

}

void gray() {
  
  colorMode(RGB);
  
  adjImage = image;
 
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
     
      color c = image.get(x, y);
      
      if(brightness(c) > map(mouseX, 0, width, 100, 255)) {
       
        adjImage.set(x, y, #FFFFFF);
        
      } else {
       
        adjImage.set(x, y, #000000);
        
      }
      
    }
  }

}

void colorSwap() {
 
  colorMode(HSB);
  
  adjImage = image;
  
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
     
      color c = image.get(x, y);
      
      float h = hue(c);
      
      h = abs(h - 255);
      
      float s = saturation(c);
      float b = brightness(c);
      
      color adjC = color(h, s, b);
      
      adjImage.set(x, y, adjC);
      
    }
  }
  
}

void correctGray() { 
  
  colorMode(RGB);
  
  adjImage = image;
  
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
     
      color c = image.get(x, y);
      
      float b = brightness(c);
      color grey = color(b);
      
      adjImage.set(x, y, grey);
      
    }
  }
  
}

void likeIfItWasBlackAndWhiteButItsPurpleInstead() { 
  
  colorMode(HSB);
  
  adjImage = image;
  
  for(int y = 0; y < height; y++) {
    for(int x = 0; x < width; x++) {
     
      color c = image.get(x, y);
      
      float b = brightness(c);
      color purple = color(70, 255, b);
      
      adjImage.set(x, y, purple);
      
    }
  }
  
}

void mousePressed() {
  
  colorSwap();
  
}