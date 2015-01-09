// Skeleton Class
// Extends Actor 

class Skeleton extends Actor {
  // Fields for Skeleton
  // Body
  Segment body; 
  
  // Left Side
  Segment luleg;
  Segment llleg;
  Segment lshoulder;
  Segment luarm;
  Segment llarm;
  Actor lhand;
  
  // Right Side
  Segment ruleg;
  Segment rlleg;
  Segment rshoulder;
  Segment ruarm;
  Segment rlarm;
  Actor rhand;
  
  // Head
  Actor head;
  
 public Skeleton(float xPos, float yPos) {
  super(xPos, yPos);
  //Initialize Segments
  body = new Segment(xPos, yPos, -90, 100);
  body.weight = 10;
  body.setPenColor(0, 0, 0);
  
  luleg = new Segment(xPos, yPos, 45, 50);
  luleg.weight = 10;
  luleg.setPenColor(0, 0, 255);
  
  llleg = new Segment(luleg.getEndX(), luleg.getEndY(), 90, 50);
  llleg.weight = 10;
  llleg.setPenColor(0, 255, 0);
  
  lshoulder = new Segment(body.getEndX(), luleg.getEndY(), 0, 20);
  lshoulder.weight = 10;
  lshoulder.setPenColor(0, 0, 255);
  
  luarm = new Segment(lshoulder.getEndX(), lshoulder.getEndY(), 45, 25);
  luarm.weight = 10;
  luarm.setPenColor(0, 255, 0);
  
  llarm = new Segment(luarm.getEndX(), luarm.getEndY(), 45, 20);
  llarm.weight = 10;
  llarm.setPenColor(255, 0, 0);
  
  lhand = new Actor(llarm.getEndX(), llarm.getEndY());
  lhand.wid = 10;
  lhand.hei = 10;
  lhand.setPenColor(0, 0, 255); 
  
  // Right side of the body
  ruleg = new Segment(xPos, yPos, -45, -50);
  ruleg.weight = 10;
  ruleg.setPenColor(0, 0, 255);
  
  rlleg = new Segment(ruleg.getEndX(), ruleg.getEndY(), 90, 50);
  rlleg.weight = 10;
  rlleg.setPenColor(0, 255, 0);
  
  rshoulder = new Segment(body.getEndX(), ruleg.getEndY(), 0, -20);
  rshoulder.weight = 10;
  rshoulder.setPenColor(0, 0, 255);
  
  ruarm = new Segment(rshoulder.getEndX(), rshoulder.getEndY(), -45, -25);
  ruarm.weight = 10;
  ruarm.setPenColor(0, 255, 0);
  
  rlarm = new Segment(ruarm.getEndX(), ruarm.getEndY(), 45, -20);
  rlarm.weight = 10;
  rlarm.setPenColor(255, 0, 0);
  
 rhand = new Actor(rlarm.getEndX(), rlarm.getEndY());
  rhand.wid = 10;
  rhand.hei = 10;
  rhand.setPenColor(0, 0, 255); 
  
 head = new Actor(body.getEndX(), body.getEndY());
 head.wid = 30;
 head.hei = 30;
 head.setPenColor(202, 13, 255);
  
  
  
 } // End Public Skeleton
  
  public void drawFrame() {
   // Call Segment.drawLine() for all the body parts
   
   body.x = x;
   body.y = y;
   
body.drawLine();

luleg.goTo(body.x, body.y);  
luleg.drawLine();

llleg.goTo(luleg.getEndX(), luleg.getEndY());
llleg.drawLine();    

lshoulder.goTo(body.getEndX(), body.getEndY());
lshoulder.drawLine();

luarm.goTo(lshoulder.getEndX(), lshoulder.getEndY());
luarm.drawLine();

llarm.goTo(luarm.getEndX(), luarm.getEndY());
llarm.drawLine();

lhand.goTo(llarm.getEndX(), llarm.getEndY());
lhand.drawEllipse();

ruleg.goTo(body.x, body.y);
ruleg.drawLine();

rlleg.goTo(ruleg.getEndX(), ruleg.getEndY());
rlleg.drawLine();    

rshoulder.goTo(body.getEndX(), body.getEndY());
rshoulder.drawLine();

ruarm.goTo(rshoulder.getEndX(), rshoulder.getEndY());
ruarm.drawLine();

rlarm.goTo(ruarm.getEndX(), ruarm.getEndY());
rlarm.drawLine();

rhand.goTo(rlarm.getEndX(), rlarm.getEndY());
rhand.drawEllipse();

head.goTo(body.x, body.y-123);
head.drawEllipse();
  } 
  
// Act() function - all movements/activities for Skeleton
public void act() {
 drawFrame(); 
 luleg.turn(5);
 
 ruleg.turn(5);

rlarm.turn(8);

 // Up and Down Keys
if (keyPressed) {
  if (key == 'a') {
    mySkeleton.move();
  }
  
  
  if (key == CODED) {
    if (keyCode == UP){
     luarm.direction = 270;
      luarm.move();
      ruarm.direction = 90;
      ruarm.move();
    }
    if (keyCode == DOWN) {
  // OwlA.dy = 10;
     luarm.direction = 90;
     luarm.move();
      ruarm.direction = 270;
      ruarm.move();
    }
    if (keyCode == RIGHT){
      luarm.direction = 0;
      luarm.move();
       ruarm.direction = 180;
      ruarm.move();
    }
    if (keyCode == LEFT){
      luarm.direction = 180;
      luarm.move();
       ruarm.direction = 0;
      ruarm.move();
    }
  } 
} // End keyPressed
  

} // End Movement
  
} // End Skeleton


