// Defines the Actor Class

class Actor {
  // Fields
  float x;
  float y;
  int fillRed = 0;
  int fillGreen = 0;
  int fillBlue = 0;
  int penRed = 0;
  int penGreen = 0;
  int penBlue = 0;
  int size = 50;
  int wid = 50;
  int hei = 50;
  int dx = 0;
  int dy = 0;
  
  // Constructor
  public Actor(int xPos, int yPos) {
    x = xPos;
    y = yPos;
  }
  
  public Actor() {
  }
  
  
  void setColor(int r, int g, int b) {
    fillRed = r;
    fillGreen = g;
    fillBlue = b;
  }
  
  void setPenColor(int r, int g, int b) {
    penRed = r;
    penGreen = g;
    penBlue = b;
  }
  
  // Move Function
  void move() {
    x = x + dx;
    y = y + dy;
  }
  
  void goTo(int xPos, int yPos) {
    x = xPos;
    y = yPos;
  }
  
  // Bounce off Edge
  void bounceEdge() {
    if (x > width || x < 0)  {
      dx = dx * -1;
    }
    if (y > height || y < 0) {
      dy = dy * -1;
    }
  } // end bounce edge
  
  void drawRect() {
   stroke(penRed, penGreen, penBlue); 
   fill(fillRed, fillGreen, fillBlue);
   rect(x, y, wid, hei);
  }
  
  // drawEllipse and drawTriangle
 void drawEllipse() {
   stroke(penRed, penGreen, penBlue);
   fill(fillRed, fillGreen, fillBlue);
   ellipse(x, y, wid, hei);
 } 
  
 
} // end the class
