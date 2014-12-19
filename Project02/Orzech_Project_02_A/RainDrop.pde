// RainDrop class

class RainDrop extends Actor{
  
  public RainDrop() {
    super();
    x = random(0, width); // Start at random x
    y = random(0, height); // Start at random y
    size = (int)random(3, 10); // random size
    fillBlue = 255;
    fillRed = 255;
    fillGreen = 255; // Blue red and green
    velocity = (int)random(5, 10); // Random speed for y
    direction = 90;
  }
  
  // Draw the Raindrop
  public void drawDrop() {
    fill(fillRed, fillGreen, fillBlue);
    ellipse(x, y, size, size);
  }
  
  // Actions for each RainDrop
  public void act() {
    drawDrop();
    move();
    if (y > height) {
      y = -20;
      velocity = (int)random(1, 10);
    }
  }
} // End class RainDrop
