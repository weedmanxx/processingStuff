class Wall {
 
  Body wBody;
  Shape wShape;
  Fixture wFixture;
  
  float x, y, w, h;
  
  Wall(float x_, float y_, float w_, float h_) {
   
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x, y));
    
    wBody = box2d.createBody(bd);
    
    PolygonShape ps = new PolygonShape();
    ps.setAsBox(box2d.scalarPixelsToWorld(w), box2d.scalarPixelsToWorld(h));
    
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    
    wBody.createFixture(fd);
    
  }
  
  void show() {
 
    Vec2 loc = box2d.getBodyPixelCoord(wBody);
    
    
    rect(loc.x, loc.y, w*2, h*2);
    
  }
  
  void delete() {
   
    box2d.destroyBody(wBody);
    
  }
  
}