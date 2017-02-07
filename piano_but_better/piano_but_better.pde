import processing.sound.*;

SinOsc piano;

float c, d, e, f, g, a, b;

Key[] keys = new Key[28]; 

void setup() {
  
  fullScreen();
  
  piano = new SinOsc(this);
  
  c = 16.3516;
  d = 18.354;
  e = 20.6017;
  f = 21.8268;
  g = 24.4997;
  a = 27.5;
  b = 30.8677;
  
  for(int i = 0; i < keys.length; i++) {
   
    keys[i] = new Key(5, width/2, height/2);
    
  }
  
  piano.amp(.1);
  piano.freq(noteToHz(c, 6, true));
  
  
}

void draw() {

    keys[5].display();

}

float noteToHz(float note, int octave, boolean sharp) {
  
  if(sharp) {
  
  return (note * pow(2, octave)) * 1.06;
  
  }
  
  return note * pow(2, octave);
  
}