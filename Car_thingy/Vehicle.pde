
class Vehicle {
  
 PVector location, velocity, acceleration;
 
 float maxSpeed, maxForce;
 
 Vehicle(float x, float y) {
  
   location = new PVector(x, y);
   velocity = new PVector(0, 0);
   acceleration = new PVector(0, 0);
   
   maxSpeed = 10;
   maxForce = 1;
   
 }
  
 void update() {
  
   
   
 }
 
 void move(PVector inTarget) {
   
   location.add(velocity);
   velocity.add(acceleration);
   
   PVector target = new PVector(inTarget.x, inTarget.y);
   PVector desired = PVector.sub(target, location);
   
   desired.setMag(maxSpeed);
   
   PVector steering = PVector.sub(desired, velocity);
   steering.limit(maxForce);
   applyForce(steering);
   
 }
 
 void display() {
  
   float theta = velocity.heading2D() + PI/2;
   
   stroke(100, 0, 0);
   strokeWeight(2);
   
   pushMatrix();
   
   translate(location.x, location.y);
   rotate(theta);
   fill(255, 25, 25);
   rect(0, 0, 20, 50);
   
   popMatrix();
   
 }
  
 void applyForce(float x, float y) {
  
   PVector force = new PVector(x, y);
   
   acceleration = force;
   
 }
 
 void applyForce(PVector force) {
  
   acceleration = force;
   
 }
  
}