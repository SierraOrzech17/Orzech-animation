// Owl CLass will extend Actor
// Sierra Orzech 

class Owl extends Actor {
 // No new fields here

public Owl(float xPos, float yPos) { 
 super(xPos, yPos); // Calls Actor class instructer   
}

// Define Project Owl
void drawOwl () {
  int s = size; 
  int r = fillRed;
  int g = fillGreen;
  int b = fillBlue;
  
  // Body of Owl
  strokeWeight(0);
  fill (r, g, b);
  ellipse(x, y, 13*s, 16*s);
  strokeWeight(0);
  
  // Beak
  fill(247, 240, 10); // Color yellow
  triangle(x, y+2*s, x-1*s, y, x+1*s, y);
  
  // Left eye
  fill(255, 255, 255);
  ellipse(x+3*s, y-2*s, 4*s, 4*s); 
  
  // Right eye
  fill(255, 255, 255);
  ellipse(x-3*s, y-2*s, 4*s, 4*s);
  
  // Left pupil
  fill(0, 0, 0); // Color black
  ellipse(x+3*s, y-2*s, 2*s, 2*s); 
  
  // Right pupil
  fill(0, 0, 0); // Color black
  ellipse(x-3*s, y-2*s, 2*s, 2*s);
  
 
  // Left wing
  strokeWeight(4); // Border of wings
   stroke(255, 204, 100); // Light orange border of wings
  fill(255, 149, 67);
  ellipse(x+5*s, y+4*s, 3*s, 6*s);
  
  // Right wing
  fill(255, 149, 67);
  ellipse(x-5*s, y+4*s, 3*s, 6*s);
 
 // Circle forming ears
 stroke(10, 228, 255);
 fill(10, 228, 255);
 ellipse(x, y-12*s, 11*s, 16*s);
 
 //hat 
 //stroke(250, 234, 50);
 //fill(250, 50, 50);
 //ellipse(x, y-6*s, 20*s, 5*s);
 
 // Feathers in front
 stroke(255, 204, 100); // Light orange
 strokeWeight(2);
 fill(r, g, b); 
 arc(x, y+5*s, 1*s, 1*s, 0, PI);
 arc(x+1.5*s, y+3*s, 1*s, 1*s, 0, PI);
 arc(x-1.5*s, y+3*s, 1*s, 1*s, 0, PI);
 arc(x, y+3*s, 1*s, 1*s, 0, PI);
 arc(x+1.5*s, y+5*s, 1*s, 1*s, 0, PI);
 arc(x-1.5*s, y+5*s, 1*s, 1*s, 0, PI);
 
 // Glasses
 stroke(0, 0, 0);
 strokeWeight(4);
 fill(0, 0, 0, 0); // Transparent 
 
 // Left
 rect(x+1*s, y-4*s, 4*s, 4*s);
 
 // Right
 rect(x-5*s, y-4*s, 4*s, 4*s);
 
 // Middle
 rect(x-4.5, y-2*s, 10, 0);
 } // End Owl
 
}
