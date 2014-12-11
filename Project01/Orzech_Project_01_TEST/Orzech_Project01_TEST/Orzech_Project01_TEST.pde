// Sierra Orzech
// Project 01

// Define Project
void drawSnowman(int x, int y, int s) {
  fill(240, 240, 240); //white ish
   //low
  ellipse(x, y+6*s, 11*s,11*s);
 //mid
  ellipse(x, y, 8*s, 8*s); // scale factor
  //head
  ellipse(x, y-5*s, 6*s, 6*s);
 //right eye
 fill(0, 0, 0); //black
 ellipse(x-1*s, y-6*s, 1*s, 1*s);
 //left eye
 ellipse(x+1*s, y-6*s, 1*s, 1*s);
 //nose
 fill(252, 176, 51);
 triangle(x+.5*s, y-5*s, x+.5*s, y-4.5*s, x+1.5*s, y-4*s);
 //hat
 fill(174, 51, 252);
 rect(x-1.5*s, y-11.5*s, 3*s, 3*s); //top
 rect(x-3*s, y-8.5*s, 6*s, 1*s); //rim
 //mouth
 fill(240, 240, 240);
 arc(x, y-4*s, 4*s, 2*s, 0, PI);  
 
 
 
  
  
}

void setup() {
  size(600,400); // canvas
  background(10, 228, 255);
  drawSnowman(300, 200, 10);
  drawSnowman(400, 200, 5);
  
  
} // end setup

void draw() {
 // background(10, 228, 225);
 // drawSnowman( mouseX, mouseY, 5);
  
}
