// Actor Project 02
// Sierra Orzech

class Actor {
  // Fields
  float x;
  float y;
  int fillRed = 0;
  int fillGreen = 0;
  int fillBlue = 0; // Colors for the fill
  int penRed = 0;
  int penGreen = 0;
  int penBlue = 0; // Colors for the pen
  int size = 50;
  int wid = 50;
  int hei = 50;
  float dx = 0;
  float dy = 0;
  
  float velocity = 0;
  float direction = 0;
  
  
  // Constructor 1
  public Actor(float xPos, float yPos) {
   x = xPos;
   y = yPos; 
}
  
  // Constructor 2: Blank
  public Actor() {
}
 
 // Set fill and pen color
void setColor(int r, int g, int b){
fillRed = r;
fillGreen = g;
fillBlue = b; 
} 

void setPenColor(int r, int g, int b){
  penRed = r;
  penGreen = g;
  penBlue = b;
}

// Move and goTo functions
void move() {
  computeVector();
  x = x + dx;
  y = y + dy;
}

void passThrough() {
  if(x > width){
    x = 0;
  }
}

void goTo(float xPos, float yPos) {
 x = xPos;
 y = yPos;  
}

// BounceEdge function
void bounceEdge(){
 if (x > width || x < 0){ 
 // dx = dx * -1;
 direction += 2 * (90-direction);
 }
 
 if (y > height || y < 0) {
 // dy = dy * -1;
 direction += 2 * (0-direction);
 }
} // End BounceEdge

  // Set DX and set DY
  void setDX(int xVel){
    dx = xVel;
  }
  
  void setDY(int yVel){
    dy = yVel;
  }
  
  // Rectangle function 
  void drawRect(){
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen,fillBlue);
    rect(x, y, wid, hei);
  }
  
  // Ellipse function 
  void drawEllipse(){
    stroke(penRed, penGreen, penBlue);
    fill(penRed, penGreen, penBlue);
    ellipse(x, y, wid, hei);
    
  }
  
  // Triangle function
  void drawTriangle(){
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
   triangle(x, y, x+wid, y, x+wid, y-hei);    
  } 
 
 public void computeVector() {
   dx = velocity * cos(radians(direction));
   dy = velocity * sin(radians(direction));
 } // End compute Vector
 
 public void turn(float t) {
   direction += t; // Chnages direction by t
 } //End turn
  
  public boolean isTouching(Actor a) {
    boolean xTouch = ((x < a.x+a.wid) && (x > a.x));
    boolean yTouch = ((y < a.y+a.hei) && (y > a.y));
    if (xTouch && yTouch){
      return true;
    }
    else {
      return false;
    }
  }
  public void bounceActorHorizontal(Actor a) {
    if (isTouching(a)) {
      dx = dx * -1;
    }
  }
        
} //End Actor

