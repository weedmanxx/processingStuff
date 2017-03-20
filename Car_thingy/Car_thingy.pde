
Vehicle v;

ArrayList<PVector> points = new ArrayList<PVector>();

float time = 0;
float totalTime = 0;
float avgTime;
float count;

void setup() {
  
  
  rectMode(CENTER);
  textSize(10);
  textAlign(CENTER);
  
  size(800, 800);
  
  v = new Vehicle(width/2, height/2);
  
 
  
}

void draw() {
 
  time += 1/frameRate;
  
  background(255);
  
  
  
  for(PVector p : points) {
   
    fill(0);
    noStroke();
    ellipse(p.x, p.y, 5, 5);
    text(points.indexOf(p) + 1, p.x, p.y + 12);
    
  }
  if(points.size() > 0) {
  
    v.move(points.get(0));
  
    if(dist(v.location.x, v.location.y, points.get(0).x, points.get(0).y) < 20) {
     
      points.remove(0);
      
    }
  
  }
  
  if(points.size() == 0) {
   
    v.velocity = new PVector(0, 0);
    
  }
  
  if(points.size() == 1) {
   
    points.add(new PVector(random(200, width - 200), random(200, height - 200)));
    
  }
  
  
  v.update();
  v.display();
  
  
  
}

void mousePressed() {
 
  points.add(new PVector(mouseX, mouseY));
  
}