//Actor Class
//Sierra Orzech

class Actor {
  //Fields
  float x;
  float y;
  int fillRed = 0;
  int fillGreen = 0;
  int fillBlue = 0; //Colors for the fill
  int penRed = 0;
  int penGreen = 0;
  int penBlue = 0; //Colors for the pen
  int size = 50;
  int wid = 50;
  int hei = 50;
  int dx = 0;
  int dy = 0;
  
  //Constructor 1
  public Actor(float xPos, float yPos) {
   x = xPos;
   y = yPos; 
}
  
  //Constructor 2: Blank
  public Actor() {
}
 
 //set fill and pen color
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

//move and goTo functions
void move() {
  x = x + dx;
  y = y + dy;
}

void goTo(float xPos, float yPos) {
 x = xPos;
 y = yPos;  
}

//bounceEdge
void bounceEdge(){
 if (x > width || x < 0){ 
  dx = dx * -1;
 }
 
 if (y > height || y < 0) {
  dy = dy * -1;
 }
}
  //set DX and set DY
  void setDX(int xVel){
    dx = xVel;
  }
  
  void setDY(int yVel){
    dy = yVel;
  }
  
  //rectangle function 
  void drawRect(){
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen,fillBlue);
    rect(x, y, wid, hei);
  }
  
  //ellipse function 
  void drawEllipse(){
    stroke(penRed, penGreen, penBlue);
    fill(penRed, penGreen, penBlue);
    ellipse(x, y, wid, hei);
    
  }
  
  //triangle function
  void drawTriangle(){
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
   triangle(x, y, x+wid, y, x+wid, y-hei); 
    
    
  }
  
  
  
  
  
  
  
} //End Actor




