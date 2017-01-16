import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class cookie extends PApplet {


int score;
int multiplyer;
int cost;

public void setup() {
 
 
 stroke(0);
 fill(0);
  
  cost = 10;
  multiplyer = 1;
  
}

public void draw() {
  background(255); 
  textSize(128);
  text(score, width/2 - 100, height/2);
  textSize(64);
  text("Cost to increase SPC: " + cost, 10, height - 10); 
  text("Score per click: " + multiplyer, 10, height - 74); 
  
 
}

public void mousePressed() {
  
 score += multiplyer; 
  
}

public void keyPressed() {
  
  if(score >= cost) {
  score -= cost;
  cost  *= 2;
  multiplyer++;
  }
}
  public void settings() {  size(1200, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "cookie" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
