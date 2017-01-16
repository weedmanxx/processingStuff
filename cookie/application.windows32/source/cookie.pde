
int score;
int multiplyer;
int cost;

void setup() {
 
 size(1200, 800);
 stroke(0);
 fill(0);
  
  cost = 10;
  multiplyer = 1;
  
}

void draw() {
  background(255); 
  textSize(128);
  text(score, width/2 - 100, height/2);
  textSize(64);
  text("Cost to increase SPC: " + cost, 10, height - 10); 
  text("Score per click: " + multiplyer, 10, height - 74); 
  
 
}

void mousePressed() {
  
 score += multiplyer; 
  
}

void keyPressed() {
  
  if(score >= cost) {
  score -= cost;
  cost  *= 2;
  multiplyer++;
  }
}