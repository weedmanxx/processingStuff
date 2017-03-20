import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  
  fullScreen();
  frameRate(10000);
  rectMode(CENTER);
  
  
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  box2d.setGravity(1, 0);

  
  
  
}

void draw() {
  
  box2d.step();
  
  if(frameCount % 21 == 0) {
    
  particles.add(new Particle(50, height/2 - 100));
  
  }
  
  background(255);
  
  for(Particle p : particles) {
  
  p.display();
  p.wind();
  
  }
  
  for(Particle p : particles) {
  
  if(p.x > width) {
    
    particles.remove(p);
    break;
     
  }
  
  }
  
  
}
 