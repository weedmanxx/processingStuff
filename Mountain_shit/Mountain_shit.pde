float[] x = new float[20];
float[] y = new float[20];

float newX;
float newY;

PShape mountain;
float fillVal;
boolean craze, rgb;

void setup() {

  fullScreen(); 
  background(255);
  frameRate(1000);
  
  colorMode(HSB);
  
}

void draw() {
  
  if(craze) {  
    if(fillVal > 500) {
  
    newPoints();
    fillVal = 0;
    
    }
  }
  
  if(rgb) {
  
  fill(fillVal, 255, 255);
  
  } else {
   
  fill(fillVal);
    
  }
  
  fillVal += 10;
  
  smaller();
  genMountain();
  
  shape(mountain, 0, 0);
  
}

void newPoints() {
 
 newX = 0;
 newY = height; 
  
 for(int i = 0; i < 20; i++) {
  
   newX += width/20;
   
   if(newX < width/2) {
 
     newY += random(-200, 100);
   
   }   else {
  
     newY -= random(-200, 100);

   }
   
   if(newY > height) {
    
     newY = height;
     
   }
   
   x[i] = newX;
   y[i] = newY;

   }
 
}

void genMountain() {
 
  mountain = createShape();
  
  mountain.beginShape();
  
  mountain.vertex(0, height);
  
  for(int i = 0; i < 20; i++) {
   
       mountain.vertex(x[i], y[i]); 
     
  }
 
  mountain.vertex(width, height);
 
  mountain.endShape(CLOSE);
  
}

void smaller() {
 
  for(int i = 0; i < 20; i++) {
   
   if(x[i] < width/2) {
    
     x[i] += map(abs(x[i] - width/2), 0, 500, 0, 20) ;
     
   } else {
    
     x[i] -= map(abs(x[i] - width/2), 0, 500, 0, 20);
     
   }
   
   y[i] += map(y[i], 0, height, 50, 2);
    
  }
  
}

void mousePressed() {
 
  newPoints();
  fillVal = 0;
  
}

void keyPressed() {
 
  if(key == 'c') {
   
    background(255);
    
  } else if(key == 'r') {
  
    rgb = !rgb;
    
  } else {
    
  craze = !craze;
  
  }
  
}