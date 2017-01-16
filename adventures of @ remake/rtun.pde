
float playerX, playerY, enemyX, enemyY;

boolean cheatMode;

int score;

void setup() {
  
  playerX = random(width/32);
  playerY = random(height/32);
  
  playerX *= 32;
  playerY *= 32;
  
  enemyDown();
  
  textSize(32);
  
  size(640, 480);   
}

void draw() {
 
  background(0);
  text("@", playerX, playerY);
  text("X", enemyX, enemyY);
  text("Score: " + score, 32, height - 32);
  
  if(cheatMode) {
    
     if(playerX > enemyX) {
       
      playerX -= 16; 
       
     }
     
     if(playerX < enemyX) {
       
      playerX += 16; 
       
     }
     
     if(playerY < enemyY) {
       
      playerY += 16; 
       
     }
     
     if(playerY > enemyY) {
       
      playerY -= 16; 
       
     }
    
  }
  
  if(dist(playerX, playerY, enemyX, enemyY) < 32) {
   
    enemyDown();
    
  }
  
}

void enemyDown() {
 
  enemyX = random(width/32);
  enemyY = random(height/32);
  
  enemyX *= 32;
  enemyY *= 32;
  
  score++;
  
}

void keyPressed() {
 
  if(keyCode == LEFT) {
   
    playerX -= 32;
    
  }
  
  if(keyCode == RIGHT) {
   
    playerX += 32;
    
  }
  
  if(keyCode == UP) {
   
    playerY -= 32;
    
  }
  
  if(keyCode == DOWN) {
   
    playerY += 32;
    
  }
  
  if(key == 'c') {
   
    cheatMode = !cheatMode;
    
  }
  
  
  
}