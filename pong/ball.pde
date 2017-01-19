class Ball {
  
 Paddle player, bot; 
  
 float x, y, ySpeed, xSpeed, diameter; 
  
 Ball() {
   
   player = new Paddle(20);
   bot = new Paddle(width - 20);
   
   x = width/2;
   y = height/2;
   ySpeed = 0;
   xSpeed = -1;
 
   diameter = 10;
   
 }
 
 void display() {
   
   noStroke();
   ellipse(x, y, diameter, diameter);
   
   player.display();
   bot.display();
   
 }
 
 void update() {
   
  movement();
  bouncing();
  paddleCollision();
   
 }
  
void reset() {
 
  x = width/2;
  y = height/2;
  
  player.y = height/2;
  bot.y = height/2;
  
  
}
  
void movement() {
  
  if(!paused) {  
   
  player.y = mouseY; 
    
  x += xSpeed*20;
  y += ySpeed*20;
  
  }
  
}

void bouncing() {
  
  if(y > height && ySpeed > 0) {
    
    ySpeed = -ySpeed;
    
  } else if(y < 0 && ySpeed < 0) {
   
    ySpeed = -ySpeed;  

  }
  
}

void paddleCollision() {
 
  //Player paddle collision
  if(abs(player.x - x) < diameter/2 + player.w/2 && abs(player.y - y) < diameter/2 + player.h/2) {
    
    xSpeed = -xSpeed;
    
    if(player.y > y) {
  
      ySpeed = map(abs(player.y - y), 0, player.h/2, 0, .5);
    
    } else {
     
      ySpeed = map(abs(player.y - y), 0, player.h/2, 0, -.5); 
      
    }
    
  }
  
  //Bot paddle collision
  if(abs(bot.x - x) < diameter/2 + bot.w/2 && abs(bot.y - y) < diameter/2 + bot.h/2) {
   
    xSpeed = -xSpeed;
    
    if(bot.y > y) {
  
      ySpeed = map(abs(bot.y - y), 0, bot.h/2, 0, .5);
    
    } else {
     
      ySpeed = map(abs(bot.y - y), 0, bot.h/2, 0, -.5); 
      
    }  
    
  }
  
}
 
  
}



  

  