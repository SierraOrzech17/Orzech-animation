// Project 02 main class
// Sierra Orzech

// Instances of Actor

Owl OwlA = new Owl(550, 300);
Car CarA = new Car(300, 200);
Owl OwlB = new Owl(500, 110);
Car CarB = new Car(200, 350);
Owl OwlC = new Owl(400, 150);
Actor test = new Actor(300, 200);
Actor bug = new Actor(50, 50);
// Rain Loop sample
RainDrop rain [] = new RainDrop[500];

// Setup Function
void setup() {
size(600, 400);
background(240, 240, 240);

test.velocity = 5;
test. direction = 5;

// Initialize the RainDrop objects
for (int i = 0; i < rain.length; i++) {
  rain[i] = new RainDrop();
}

OwlA.setColor(0, 0, 255); // Blue
OwlA.wid = 10;
OwlA.hei = 10;
OwlA.direction = 90;
OwlA.velocity = 5;
OwlA.size = 5;

OwlB.setColor(242, 3, 255); // Purple
OwlB.wid = 5;
OwlB.hei = 5;
OwlB.direction = 5;
OwlB.velocity = 1;
OwlB.size = 4;

OwlC.setColor(255, 247, 8);
OwlC.wid = 5;
OwlC.hei = 5;
OwlC.direction = 5;
OwlC.velocity = 1;
OwlC.size = 4;

CarA.wid = 5;
CarA.hei = 5;
CarA.direction = 5;
CarA.velocity = 1;
CarA.size = 10;

CarB.direction = 5;
CarB.velocity = 1;

bug.setColor(48, 255, 8);
bug.wid = 20;
bug.hei = 20;
bug.direction = 20;
bug.velocity = 5;


} // End setup

//Draw Function
void draw() {
  background(10, 228, 255);
  
  OwlA.drawOwl();
  OwlA.bounceEdge();
  
  OwlC.drawOwl();
  OwlC.move();
  OwlC.passThrough();
  
  CarA.drawCar();
  CarA.move();
  CarA.passThrough();
  //CarA.turn(-5);
  
  CarB.drawCar();
  CarB.move();
  CarB.passThrough();

 bug.drawTriangle();
 bug.move();
 bug.bounceEdge();
 bug.bounceActorHorizontal(OwlA);
 
 test.move();
 test.drawEllipse();
 test.turn(5);
 test.bounceEdge();

OwlB.drawOwl();
OwlB.move();
OwlB.passThrough();


 
  for (int i = 0; i < rain.length; i++) {
    rain[i].act();
  } // End for Rain
  
  // Up and Down Keys
if (keyPressed) {
  if (key == CODED) {
    if (keyCode == UP){
      OwlA.direction = 270;
     //OwlA.dy = 0;
      OwlA.move();
    }
    if (keyCode == DOWN) {
  // OwlA.dy = 10;
     OwlA.direction = 90;
     OwlA.move();
    }
    if (keyCode == RIGHT){
      OwlA.direction = 0;
      OwlA.move();
    }
    if (keyCode == LEFT){
      OwlA.direction = 180;
      OwlA.move();
    }
  } 
} // End keyPressed
}
