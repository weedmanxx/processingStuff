float time, timeLeft, average, totalTime, counter;

int state = 0;

void setup() {
 
  frameRate(1001000);
  
  fullScreen();
  
  textAlign(CENTER);
  textSize(50);
  
}

void draw() {
  
  switch(state) {
   
    case 0:
      
      background(#469FD8); // Light blue
      text("Click anywhere to begin", width/2, height/2);
      
      break;
      
    case 1:
      
      background(#93222F); // Darkish red
      text("Wait for the screen to turn green, then click as fast as you can", width/2, height/2);
      
      if(timeLeft < 0) {
       
        state++;
        time = 0;
        
      }
      
      timeLeft -= 1/frameRate;
      
      break;
      
    case 2:
      
      background(#4CE81A); //Bright green
      
      text("Click the screen now!", width/2, height/2);
      text("Time: " + round(time*1000) + "ms", width/2, height/2 + 50);
      
      time += 1/frameRate;
      
      break;
      
    case 3:
      
      background(#4CE81A); //Bright green
      text("Time: " + round(time*1000) + "ms", width/2, height/2 + 50);
      text("Average of Times: " + (round(average)) + "ms", width/2, height/2);
      
      
      
      average = (totalTime/counter)*1000; ; 
      
      break;
    
  }
  
  
}

void mousePressed() {
  
  if(state == 2) {
    
     totalTime += time;
     counter++;
     
     
   }
  
  if(state != 1) {
   
    state++;
    
  
  } 
  
  if(state == 2) {
    
     time = 0;
     
     
   }
  
  if(state == 1 || state == 0) {
   
    timeLeft = random(3, 7);
    time = 0;
    
  }
 
   if(state == 2) {
    
     totalTime += time;
     counter++;
     time = 0;
     
   }
 
   if(state > 3) {
    
     state = 1;
     
     timeLeft = random(3, 7);
     
     
     
   }
   
   
 
}