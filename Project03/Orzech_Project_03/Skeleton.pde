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
  
 public Skeleton(float xPos, float yPos) {
  super(xPos, yPos);
  //Initialize Segments
  body = new Segment(xPos, yPos, -90, 100);
  body.weight = 10;
  body.setPenColor(0, 0, 0);
  
  luleg = new Segment(xPos, yPos, 45, 50);
  luleg.weight = 10;
  luleg.setPenColor(0, 0, 255);
  
  llleg = new Segment(luleg.getEndX(), luleg.getEndY());
  llleg.weight = 10;
  llleg.setPenColor(0, 255, 0);
 }
  
  public void drawFrame() {
   // Call Segment.drawLine() for all the body parts
  body.drawLine();
 luleg.drawLine();
llleg.goTo(luleg.getEndX(), luleg.getEndY());
llleg.drawLine();    
  } 
  
// Act() function - all movements/activities for Skeleton
public void act() {
 drawFrame(); 
  }
  
  
} // End Skeleton


