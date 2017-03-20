ArrayList<PVector> points = new ArrayList<PVector>();

PShape shape;

int pointsCount;

void setup() {
 
  fullScreen();

  shape = new PShape();
  
}

void draw() {
 
  background(255);
 
  fill(0);
  shape(shape);
 
  text(pointsCount, 16, height - 16);
 
}

void mousePressed() {
 
  pointsCount = 0;
  
  points.add(new PVector(mouseX, mouseY));
  
  shape = createShape();
  shape.beginShape();
  
  for(PVector p : points) {
   
    pointsCount++;
    shape.vertex(p.x, p.y);
    
  }
  
  shape.endShape(CLOSE);
  
}