class Key {
  
  float x, y, scale, note;
  
  Key(float _note, float _x, float _y) {
    
    scale = 20;  
    
    note = _note;
    x = _x;
    y = _y;
    
  }
  
  void display() {
   
    rect(x, y, scale, 7*scale);
    
  }
  
  void playNote(int hz) {
   
    
    
  }
  
  
  
}