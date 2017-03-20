ArrayList<Integer> primes = new ArrayList<Integer>();

int checkNumber = 1;
int primeIndex = 0;

int newPrimeAlpha;

PShape line = new PShape();

/* 

  S.O.S. (Too Bad)
    Staples ad
    Squarespace ad
  Don't Fear the Reaper
  Heat of The Moment
  Power of Love
  Come Together
  
  
*/

void setup() {
  
  frameRate(100000);
  
  primes.add(2);
  
  fullScreen();
  background(255);
  
  fill(0);
  textSize(90);
  
  
}

void draw() {
  
  background(255);
  
  addPrime();
  textOutput();
  lines();
  
  shape(line);
  
}

void addPrime() {

 checkNumber += 2;

 int x = checkNumber - 1;
 boolean prime = true;

 for (int i = 0; i < checkNumber - 1; i++) {

  if (checkNumber % x == 0) {
   if (x != 1) {

    prime = false;
    break;
    
   }
  }

  x--;

 }

 if (prime) {

  primes.add(checkNumber);

 }

}

void textOutput() {

  fill(0);
  
  textSize(90);
  textAlign(CENTER, CENTER);
  text(primes.get(primeIndex), width/2, height/2);
  
  textAlign(CENTER);
  textSize(45);
  text("Prime: " + (primeIndex + 1) + "/" + primes.size(), width/2, height - 50);
 
  fill(0, newPrimeAlpha);
  
}

void keyPressed() {
 
  if(keyCode == LEFT) {
   if(primeIndex > 0) {
    
     primeIndex--;
     
   }
  }
  
  if(keyCode == RIGHT) {
   if(primeIndex < primes.size() - 1) {
    
     primeIndex++;
     
   }
  }
  
}

void mousePressed() { 
 
  if(mouseX > width/2) {
    if(primeIndex < primes.size() - 1) {
    
     primeIndex++;
     
    }
  }
  
  if(mouseX < width/2) {
   if(primeIndex > 0) {
    
     primeIndex--;
     
   }
  }
  
}

void lines() {
  
  pushMatrix();
  
  strokeWeight(5);
  noFill();
  
  popMatrix();
  
  line.beginShape();
  
  for(int i = 0; i < primes.size() - 1; i++) {
    
    line.vertex(primes.get(i), i); 
    
  }
  
  line.endShape(CLOSE);
  
} 