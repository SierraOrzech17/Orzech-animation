// Sierra Orzech
// Final Project Eagle

// Instances of Eagle
Eagle myEagle = new Eagle(100, 200);


// Setup Function
void setup() {
  size(800, 600);
  background(255, 255, 255);
  
 myEagle.setColor(232, 214, 164);
 myEagle.wid = 10;
 myEagle.hei = 10;
  
} // End Setup

void draw() {
  background(255, 255, 255);
  
 myEagle.drawEagle();
  
  
} // End draw
