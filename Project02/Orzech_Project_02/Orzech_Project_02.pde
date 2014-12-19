//Sierra Orzech
//Actor Class: Project 02
//Main Class

//Instances of Actor
Owl joe = new Owl(100, 200);
Actor rebecca = new Actor(300, 200);
Actor joshua = new Actor(100, 100);
Actor jane = new Actor(50, 350);
//Setup Function
void setup() {
  size(600, 400);
  background(240, 240, 240);
  
  //set rebecca's values
  rebecca.setColor(0, 0, 255); //BLue
  rebecca.setPenColor(255, 0, 0); //Red
  rebecca.wid = 100;
  rebecca.hei = 100;
  rebecca.setDX(10);
  rebecca.setDY(10);
  
  //set joshua's values
  joshua.setColor(0, 255, 0); //green
  joshua.wid = 25;
  joshua.hei = 25;
  joshua.setDX(15);
  joshua.setDY(15);
  
  //set joe's values
  joe.setColor(0, 0, 255);
  joe.wid = 20;
  joe.hei = 20;
  joe.setDX(5);
  joe.setDY(5);
  joe.size = 10;
  
  //set jane's values
  jane.setColor(255, 255, 0);
  jane.wid = 5;
  jane.hei = 30;
  jane.setDX(2);
  jane.setDY(2);
  
} //End Setup

//Draw Function
void draw() {
 background(10, 228, 255); 
 
 joe.drawOwl();
 joe.move();
 joe.bounceEdge();
 
 rebecca.drawRect();
 rebecca.move();
 rebecca.bounceEdge();
 
 joshua.drawRect();
 joshua.move();
 joshua.bounceEdge();
 
 jane.drawEllipse();
 jane.move();
 jane.bounceEdge();

} //end draw
