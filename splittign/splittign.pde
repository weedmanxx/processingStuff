ArrayList<Ball> balls = new ArrayList<Ball>();

float i;

boolean drawLines;

void setup() {
  
  print(width + " | " + height);
  
  fullScreen();



  for(int i = 0; i < 1; i++) {
   
    balls.add(new Ball(width/2, height/2, 500));
    
  }
  
}

void draw() {
 
  int i = 0;
  
  background(255);
  
  for(Ball b : balls) {
   
    b.display();
    b.move();
  
  if(drawLines) {
    for(Ball b2 : balls) {
     if(b != b2) {
      line(b.x, b.y, b2.x, b2.y);
      i++;
     }
    }
   }
  }
  
  
  
  println(balls.size() + " | " + i);
    
    
}

void mousePressed() {
   
  float x, y, size, l;
  
  x = 0;
  y = x;
  size = y;
  
  l = balls.size();
  
  
  
  for(int i = 0; i < l; i++) {
    
    
    
    x = balls.get(i).x;
    y = balls.get(i).y;
    size = balls.get(i).size;
    
    balls.get(i).size /= 2;
    
    balls.get(i).xSpeed = random(-10, 10);
    balls.get(i).ySpeed = random(-10, 10);
    
    balls.add(new Ball(x, y, size/2));
  
  }  

}

void keyPressed() {
 
  drawLines = !drawLines;
  
}
  