Ball ball;

int playerScore, botScore, diff;

boolean paused = true;


void setup() {
 
  diff = 2;
  
  fullScreen();
  frameRate(60);
  rectMode(CENTER);
  
  ball = new Ball();
  
  
}

void draw() {
 
  background(0);
  
  ball.update();
  ball.display();
  
  botAI();
  scoring();
  textInfo();
 
}
 
void keyPressed() {
 
  if(keyCode == UP) { 
    if(diff != 3) {
     
      diff++;
      
    } 
  }
  
  if(keyCode == DOWN) {
    if(diff != 1) {
     
      diff--;
      
    }   
  }  
}

void mousePressed() {
 
  paused = !paused;
  
}

void botAI() {
  
 if(!paused) {
    if(ball.bot.y > ball.y) {
    
     ball.bot.y -= diff + 5;

  } else if (ball.bot.y < ball.y) {  
   
     ball.bot.y += diff + 5;
    
    }
  } 
  
}

void scoring() {
  
 if(!paused) {
    if(ball.x < 0 && ball.xSpeed < 0) {
     
      paused = true;
      playerScore++;
      ball.reset();
      
    } else if(ball.x > width && ball.xSpeed > 0) {
     
      paused = true;
      botScore++;
      ball.reset();
      
    }
  }
  
}

void textInfo() {

    textSize(64);
    text(botScore, width/2 - 95, 60);
    text(playerScore, width/2 + 50, 60);
    
    textSize(24);
    text("Difficulty level: " + diff, width/2 - 210, height - 10);
    text("Arrow keys to adjust difficulty, click to pause and unpause.", width/2 + 15, height - 10);
    
    stroke(255, 255/2);
    strokeWeight(5);
    line(width/2, 0, width/2, height);
 
}