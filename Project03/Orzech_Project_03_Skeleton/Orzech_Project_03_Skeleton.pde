// Project 03 Skeleton
// Sierra Orzech

// Instances of Skeleton
Skeleton mySkeleton = new Skeleton(300, 200);

// Setup Function
void setup() {
  size(600, 400);
  background(240, 240, 240);
  mySkeleton.velocity = 10;
  
} // End setup

// Draw Function
void draw() {
  background(240, 240, 240);
  
  mySkeleton.act();
  //text(mySkeleton.x, 100, 100);
  
  // Up and Down Keys
if (keyPressed) {
  if (key == 'a') {
 //   mySkeleton.move();
  }
  
  
  if (key == CODED) {
    if (keyCode == UP){
 //    mySkeleton.direction = 270;
   //   mySkeleton.move();
    }
    if (keyCode == DOWN) {
  // OwlA.dy = 10;
 //    mySkeleton.direction = 90;
  //   mySkeleton.move();
    }
    if (keyCode == RIGHT){
    //  mySkeleton.direction = 0;
      //mySkeleton.move();
    }
    if (keyCode == LEFT){
      //mySkeleton.direction = 180;
      //mySkeleton.move();
    }
  } 
} // End keyPressed
  
} // End draw function
