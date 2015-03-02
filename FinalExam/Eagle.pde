// Eagle class will extend Actor

class Eagle extends Actor {  
  public Eagle(int xPos, int yPos) {
    super(xPos, yPos);
  } // End public Eagle

// drawEagle Function
void drawEagle () {
  int s = size; 
  int r = fillRed;
  int g = fillGreen;
  int b = fillBlue;
  // Body of Eagle
  fill(r, g, b);
  ellipse(x, y, 13*s, 16*s);
 
 // Beak
fill(247, 240, 10);  
triangle(x, y+2*s, x-1*s, y, x+1*s, y);

// Left Eye
fill(255, 255, 255);
ellipse(x+3*s, y-2*s, 4*s, 4*s);

// Right Eye
fill(255, 255, 255);
ellipse(x-3*s, y-2*s, 4*s, 4*s);

// Left Pupil
fill(0, 0, 0);
ellipse(x+3*s, y-2*s, 2*s, 2*s);

//Right Pupil
fill(0, 0, 0);
ellipse(x-3*s, y-2*s, 2*s, 2*s);

// Right Wing
  
  
} // End drawEagle Function
} // End Eagle Actor 
