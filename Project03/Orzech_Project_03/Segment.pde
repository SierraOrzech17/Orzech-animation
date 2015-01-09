// Segment Class
// Will extend Actor

class Segment extends Actor {
 float len; // Length of the line
 float weight = 5; // Thickness  
  
// Constructors
public Segment(float x, float y) {
// Calls the super
super(x, y);
len = size; // Default
}

public Segment(float x, float y, float d, float s){
 super(x, y);
 direction = d;
 len = s;
}

public Segment() {
} 

//Draw Line Function- do all the math
public void drawLine() {
 // Calculate the end points 
float x2 = x + len * cos(radians(direction));
float y2 = y + len * sin(radians(direction));
stroke(penRed, penGreen, penBlue);
strokeWeight(weight);
line(x, y, x2, y2);
}

public float getEndX() {
  float x2 = x + len * cos(radians(direction));
  return x2;
}

public float getEndY() {
  float y2 = y + len * sin(radians(direction));
  return y2;
}


}
