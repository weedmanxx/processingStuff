Spiral[] spirals;

boolean circle;

void setup() {
 
  frameRate(10000);
  
  /*
  
  Change in the spirally thingys come mostly from changing
  the number of Spiral objects and the arguments when instantiating the objects,
  You should use random numbers for atleast one of the arguments so they won't all be in the same place
  I usually leave the third argument as the same thing, but I'm sure some cool stuff can be acheived by changing it 
  
  The spirals use polar coords that increase to form a sort of rotation
  
  The 1st argument is the intial distance from 0, 0 (the middle) of a spiral
  The 2nd argument is the intial angle of the spiral
  The 3rd argument is the rate at which the distance and angle increase
  
  */
  spirals = new Spiral[500]; // <--- number of spirals
  
  for(int i = 0; i < spirals.length; i++) {
                                                                        
      spirals[i] = new Spiral(1, random(5, 100), 1);
    
  }
  
  fullScreen();
  noStroke();
  colorMode(HSB);
  background(255);
  
  
}

void draw() {
  
   translate(width/2, height/2);
  
   for(int i = 0; i < spirals.length; i++) {
      
     
      spirals[i].update();
      spirals[i].display();
      
     
      
  }
  
  

}