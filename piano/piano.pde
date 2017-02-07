
import processing.sound.*;

TriOsc  piano;

int c, cs, d, ds, e, f, fs, g, gs, a, as, b, hc;

float hz, amp;

float ampChange = .1;

void setup() {
  
  size(640, 480);
  
  piano = new TriOsc(this);
  
  c = 261;
  cs = 277;
  d = 293;
  ds = 311;
  e = 329;
  f = 349;
  fs = 369;
  g = 391;
  gs = 415;
  a = 440;
  as = 466;
  b = 493;
  hc = 523;
  
  piano.play();
  
  background(255);
  
  rect(25, 50, width - 50, height - 200);
  
  for(int i = 0; i < 8; i++) {
  
  line((i * width / 8), 50, (i * width / 8), height - 150);

  } 
  
  fill(0);
  
  rect(62, 50, 33, 180);
  rect(142, 50, 33, 180);
  rect(302, 50, 33, 180);
  rect(382, 50, 33, 180);
  rect(462, 50, 33, 180);
  
  textSize(32);
  
  text("E", 45, 360);
  text("R", 110, 360);
  text("T", 190, 360);
  text("Y", 270, 360);
  text("U", 350, 360);
  text("I", 430, 360);
  text("O", 510, 360);
  text("P", 590, 360);
  
  text("4", 65, 35);
  text("5", 145, 35);
  text("7", 305, 35);
  text("8", 385, 35);
  text("9", 465, 35);
 
}

void draw() {
 
  piano.freq(hz);
  piano.amp(amp);
  
  if(!(amp <= .01)) {
   
    amp -= .001;
    
  } else {
    
     amp = 0; 
    
  }
  
}

void keyPressed() {
 
    
  
  switch(key) {
    
    
    case 'e':
      hz = c;
      amp = ampChange;
      break;
    
    case '4':
      hz = cs;
      amp = ampChange;
      break;
    
    case 'r':
      hz = d;
      amp = ampChange;
      break;
    
    case '5':
      hz = ds;
      amp = ampChange;
      break;
    
    case 't':
      hz = e;
      amp = ampChange;
      break;
    
    case 'y':
      hz = f;
      amp = ampChange;
      break;
    
    case '7':
      hz = fs;
      amp = ampChange;
      break;
    
    case 'u':
      hz = g;
      amp = ampChange;
      break;
    
    case '8':
      hz = gs;
      amp = ampChange;
      break;
    
    case 'i':
      hz = a;
      amp = ampChange;
      break;
    
    case '9':
      hz = as;
      amp = ampChange;
      break;
    
    case 'o':
      hz = b;
      amp = ampChange;
      break;
    
    case 'p':
      hz = hc;
      amp = ampChange;
      break;
    
  }
  
}