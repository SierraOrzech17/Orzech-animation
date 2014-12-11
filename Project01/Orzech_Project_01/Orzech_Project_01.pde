//Sierra Orzech
//Project 01 

//Define Project Owl
void drawOwl (int x, int y, int s, int r, int g, int b) {
  
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
}

void drawTree(int x, int y, int s){
 stroke(121, 67, 59);
 fill(121, 67, 59); //color brown

 //branches
 quad(x+15*s, y+7*s, x+18*s, y+5*s, x-30*s, y+10*s, x-30*s, y+12*s);
 quad(x-10*s, y-13*s, x-11*s, y-10*s, x-30*s, y+5*s, x-30*s, y+1*s);

 //leaves 
 stroke(200, 247, 15); //border yellow-green
 fill(25, 209, 66); //color green
 triangle(x-10*s, y+9*s, x-15*s, y+9*s, x-11*s, y+4*s);
 triangle(x+13*s, y+6*s, x+15*s, y+5*s, x+14*s, y+10*s);
 triangle(x-28*s, y+11*s, x-24*s, y+9*s, x-26*s, y+8*s);
 

  
  
}

void setup() {
  size(600,400); //canvas size
  background(10, 228, 255); //background color
  
  drawOwl(200, 325, 3, 251, 255, 41); //Yellow owl and size
  drawTree(300, 200,10);
  drawTree(100, 100, 5);
  drawTree(200, 300, 7);
  drawOwl(100, 100, 5, 59, 75, 242); //Blue Owl and size
  drawOwl(300, 200, 10, 247, 47, 141); //Owl size and color pink
  
  
}// end setup
