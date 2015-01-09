// Project 03
// Sierra Orzech

//Instance of a Segment
Segment arm = new Segment(400, 300, -90, 150);
Segment hand = new Segment(400, 300, -45, 100);
Segment leg = new Segment(400, 300, 180, 200);
Segment foot = new Segment(400, 300, 20, 50);
Segment hand2 = new Segment(400, 300, -45, 100);



void setup() {
  size(800, 600);
  background(255, 255, 0);
  
 arm.weight = 10; 
 arm.setPenColor(255, 0, 0);
 
 hand.weight = 10;
 hand.setPenColor(0, 0, 255);
 
 leg.weight = 10;
 leg.setPenColor(0, 255, 0);
 
 foot.weight = 10;
 foot.setPenColor(255, 255, 0);
 
 hand2.weight = 10;
 hand2.setPenColor(195, 0, 255);
 
 }

void draw() {
 background(0, 255, 255);
  
 arm.drawLine();
 arm.drawRect(); 
 arm.turn(-1);
 
 hand.goTo(arm.getEndX(), arm.getEndY());
 hand.drawLine();
 hand.turn(2);
 
 leg.goTo(arm.getEndX(), arm.getEndY());
 leg.drawLine();
 leg.turn(-5);
 
 foot.goTo(leg.getEndX(), leg.getEndY());
 foot.drawLine();
 foot.drawTriangle();
 foot.turn(20);
 
 hand2.goTo(hand.getEndX(), hand.getEndY());
 hand2.drawEllipse();
 hand2.turn(2);
 }
