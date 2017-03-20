class Particle {
   
  Body pBody;
  Shape pShape;
  Fixture pFixture; 
 
  float x, y;
  float d;
  
  color c;
   
  Particle(float x_, float y_) {
      
    x = x_;
    y = y_;
    
    d = 10;
    
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

  }
  
  void display() {
   
    Vec2 loc = box2d.getBodyPixelCoord(pBody);
    
    x = loc.x;
    y = loc.y;
 
    fill(c);
    ellipse(x, y, d, d);
      
  }
 
  void wind() {
  
    float mag = 5;
    
    Vec2 down = new Vec2(0, -mag);
    Vec2 up = new Vec2(0, mag);
    
    Vec2 loc = box2d.getBodyPixelCoord(pBody);
    
     if(loc.y < height/2) {
      
       applyForce(down);
       
     }
     
     println(35/4);
     
     if(loc.y > height/2) {
       
       applyForce(up);
       
     }
    
  }
 
  void applyForce(Vec2 force) {
   
    Vec2 center = pBody.getWorldCenter();
    pBody.applyForce(force, center);
    
  }
  
}