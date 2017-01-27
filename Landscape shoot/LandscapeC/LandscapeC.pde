
float x, y, x2, y2;

void setup() {
  
 y2 = height/2;

  
 fullScreen();
 background(255);
 
}

void draw() {

 y = y2;
 x = x2;
 
 x2 += 2;
 y2 += random(-5, 5);
 
 line(x2, y2, x, y);
 line(x2, y2, x2, height);
 line(x2, y2, x2 - 1, height);
  
}