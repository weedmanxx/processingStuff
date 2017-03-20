class Particle {
   
  Body pBody;
  Shape pShape;
  Fixture pFixture; 
 
  float x, y;
  float d;
  
  color c;
   
  boolean tag; 
   
  Vec2 force; 
   
  Particle(float x_, float y_, Vec2 force_, boolean tag_) {
    
    force = force_;
    
    x = x_;
    y = y_;
    
    d = 10;
    
    tag = tag_;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x, y));
    
    pBody = box2d.createBody(bd);
    
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(d/2);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    
    fd.density = 1;
    fd.friction = 0;
    fd.restitution = 1;
    
    pBody.createFixture(fd);
    
    Vec2 center = pBody.getWorldCenter();
    
    pBody.applyForce(force, center);
    
  }
  
  void display() {
   
    Vec2 loc = box2d.getBodyPixelCoord(pBody);
    
 
    fill(c);
    ellipse(loc.x, loc.y, d, d);
      
  }
 
  void update() {
   
    
    
  }
  
}