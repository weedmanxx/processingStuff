Spiral s1, s2, s3;

void setup() {

  fullScreen();
  
  s1 = new Spiral(random(10), random(10), 1, 90); 
  s2 = new Spiral(random(10), random(10), 1, 180); 
  s3 = new Spiral(random(10), random(10), 1, 270); 
  
  noStroke();
  
  background(255);
  
}

void draw() {
  
  
  
  translate(width/2, height/2);
  
  s1.spiral();
  s2.spiral();
  s3.spiral();
  
  fill(0, 25);
  
  triangle(s1.x, s1.y, s2.x, s2.y, s3.x, s3.y);
  
}