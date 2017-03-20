import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

ArrayList<Particle> particles = new ArrayList<Particle>();
ArrayList<Wall> walls = new ArrayList<Wall>();

Vec2 slowForce = new Vec2(250*random(-10, 10), 250*random(-10, 10));
Vec2 fastForce = new Vec2(100000*random(-10, 10), 100000*random(-10, 10));

Box2DProcessing box2d;

boolean paused;

void setup() {
  
  fullScreen();
  
  frameRate(10000);
  
  rectMode(CENTER);
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  box2d.setGravity(0, 0);
  
  for(int i = 0; i < 200; i++) {
   
    particles.add(new Particle(random(width/2, width), random(height), fastForce, true));
    
  }
  
  for(int i = 0; i < 200; i++) {
   
    particles.add(new Particle(random(width/2), random(height), slowForce, false));
    
  }
  
  walls.add(new Wall(0, height - 20, width, 20));
  walls.add(new Wall(0, 0, 20, height));
  walls.add(new Wall(width - 20, 0, 20, height));
  walls.add(new Wall(0, 0, width, 20));
  walls.add(new Wall(width/2 - 10, 0, 20, height));
  
}



void draw() {
 
  if(!paused) {
    
  box2d.step();
  
  }
  
  background(255);
  
  float totalSpeedSlow = 0;
  float avgSpeedSlow = 0;
  float counterSlow = 0;
  
  float totalSpeedFast = 0;
  float avgSpeedFast = 0;
  float counterFast = 0;
  
  for(Particle p : particles) {
   
    if(p.tag) {
      
      float speed = sqrt(pow(p.pBody.getLinearVelocity().x, 2) + pow(p.pBody.getLinearVelocity().y, 2));
      
      p.c = color(map(speed, 40, 70, 0, 255), 0, map(speed, 40, 70, 255, 0));
      
      counterFast++;
      totalSpeedFast += speed;
      avgSpeedFast = totalSpeedFast/counterFast;
        
    } else {
      
      float speed = sqrt(pow(p.pBody.getLinearVelocity().x, 2) + pow(p.pBody.getLinearVelocity().y, 2));
      
      p.c = color(map(speed, 40, 70, 0, 255), 0, map(speed, 40, 70, 255, 0));
      
      counterSlow++;
      totalSpeedSlow += speed;
      avgSpeedSlow = totalSpeedSlow/counterSlow;

    }
    
    
    
    p.display();  
    
  }
  
  for(Wall w : walls) {
   
    fill(0);
    w.show();
    
  }

  text("Avg. Speed of fast particles: " + avgSpeedFast, width - 250, height - 50);
  text("Avg. Speed of slow particles: " + avgSpeedSlow, 25, height - 50);
 
  
}

void mousePressed() {
 
  for(Wall w : walls) {
   
    if(w.x == width/2 - 10) {
     
      w.delete();
      walls.remove(w);
      break;
      
    }
    
  }
  
}

void keyPressed() {
 
  paused = !paused;
  
  
  
}