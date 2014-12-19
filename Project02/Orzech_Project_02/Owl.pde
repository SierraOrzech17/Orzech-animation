// Owl CLass will extend Actor
// Sierra Orzech 

class Owl extends Actor {
 // No new fields here

public Owl(float xPos, float yPos) { 
 super(xPos, yPos); // Calls Actor class instructer   
}

//Define Project Owl
void drawOwl () {
  int s = size; 
  int r = fillRed;
  int g = fillGreen;
  int b = fillBlue;
  //body of Owl
  strokeWeight(0);
  fill (r, g, b);
  ellipse(x, y, 13*s, 16*s);
  strokeWeight(0);
  
  //Beak
  fill(247, 240, 10); //color yellow
  triangle(x, y+2*s, x-1*s, y, x+1*s, y);
  
  //left eye
  fill(255, 255, 255);
  ellipse(x+3*s, y-2*s, 4*s, 4*s); 
  
  //right eye
  fill(255, 255, 255);
  ellipse(x-3*s, y-2*s, 4*s, 4*s);
  
  //left pupil
  fill(0, 0, 0); //color black
  ellipse(x+3*s, y-2*s, 2*s, 2*s); 
  
  //right pupil
  fill(0, 0, 0); //color black
  ellipse(x-3*s, y-2*s, 2*s, 2*s);
  
 
  //left wing
  strokeWeight(4); //border of wings
   stroke(255, 204, 100); //light orange border of wings
  fill(255, 149, 67);
  ellipse(x+5*s, y+4*s, 3*s, 6*s);
  
  //right wing
  fill(255, 149, 67);
  ellipse(x-5*s, y+4*s, 3*s, 6*s);
 
 //circle forming ears
 stroke(10, 228, 255);
 fill(10, 228, 255);
 ellipse(x, y-12*s, 11*s, 16*s);
 
 //feathers in front
 stroke(255, 204, 100); //light orange
 strokeWeight(2);
 fill(r, g, b); 
 arc(x, y+5*s, 1*s, 1*s, 0, PI);
 arc(x+1.5*s, y+3*s, 1*s, 1*s, 0, PI);
 arc(x-1.5*s, y+3*s, 1*s, 1*s, 0, PI);
 arc(x, y+3*s, 1*s, 1*s, 0, PI);
 arc(x+1.5*s, y+5*s, 1*s, 1*s, 0, PI);
 arc(x-1.5*s, y+5*s, 1*s, 1*s, 0, PI);
 
 //glasses
 stroke(0, 0, 0);
 strokeWeight(4);
 fill(0, 0, 0, 0); //transpirant 
 
 //left
 rect(x+1*s, y-4*s, 4*s, 4*s);
 
 //right
 rect(x-5*s, y-4*s, 4*s, 4*s);
 
 //middle
 rect(x-4.5, y-2*s, 10, 0);

} //End Owl
}
