float x, y, a, r;

void setup() {
 
  a = 1;
  r = 1;
  
 fullScreen();
 noStroke();
 fill(0);
 background(255);
 colorMode(HSB);
 
 frameRate(10000);
  
}

void draw() {
  
  translate(width/2, height/2);
  
  x = r * cos(a);
  y = r * sin(a);
  
  a += 2/a;
  r += 2/r;
  
  fill(a % 255, 200, 200);
  
  ellipse(x, y, 7, 7);
  
}