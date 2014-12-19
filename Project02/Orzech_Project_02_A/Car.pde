// Car class will extend actor
// Sierra Orzech

class Car extends Actor {
  // No new fields here
  
  // Contructor for Car
  public Car(float xPos, float yPos) {
    super(xPos, yPos); // Calls the actor constructor
  }

  
  void drawCar() {
    // Body 
    stroke(0, 0, 0);
    strokeWeight(2);
    fill(0, 0, 255);
    rect(x, y, 100, 35);
    // Wheels
    fill(0, 0, 0);
    ellipse(x + 25, y + 35, 25, 25);
    ellipse(x + 75, y + 35, 25, 25);
    // Roof
    fill(255, 0, 0);
    quad(x+25, y, x+35, y-35, x+65, y-35, x+75, y);
  }
  
} //End class car
