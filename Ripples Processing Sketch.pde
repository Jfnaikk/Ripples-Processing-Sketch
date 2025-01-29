/* 
 * Date: December 18, 2024
 * Author: Jawad F. Naik
 * Class/Professor: Elements of Media / Fred Wolflink
 * Institution: Massachusetts College of Art and Design
 * Location: Boston, Massachusetts, USA
 * 
 * Description:
 * This Sketch generates multicolored ripples on a black background 
 * whenever the user clicks on the canvas. The ripples grow dynamically and stay 
 * on the screen. Pressing the SPACEBAR captures a screenshot and resets the canvas. 
 * Instructions are displayed at the bottom of the canvas for user interaction.
 */

ArrayList<Ripple> ripples = new ArrayList<>();
PFont font; // Font for displaying instructions

void setup() {
  size(800, 800); // Set the canvas size
  background(0);  // Set the background color to black
  noStroke();     // Disable stroke for shapes
  font = createFont("Arial", 16, true); // Load the font for instructions
}

void draw() {
  background(0); // Redraw the background to black

  // Update and display all ripples
  for (Ripple ripple : ripples) {
    ripple.update();
    ripple.display();
  }

  // Show instructions at the bottom
  displayInstructions();
}

void mousePressed() {
  // Add a new ripple at the position of the mouse click
  ripples.add(new Ripple(mouseX, mouseY));
}

void keyPressed() {
  if (key == ' ') { // If spacebar is pressed
    saveFrame("screenshot-####.png"); // Save the current frame as a PNG file
    ripples.clear();                  // Clear all ripples to reset the canvas
  }
}

void displayInstructions() {
  // Display instructions at the bottom of the screen
  fill(255); // Set text color to white
  textFont(font);
  textAlign(CENTER); // Center-align the text
  text("Click anywhere to create ripples. Press SPACEBAR to save a screenshot and reset.", width / 2, height - 20);
}

class Ripple {
  float x, y;      // Center position of the ripple
  float maxRadius; // Maximum size the ripple can grow to
  int colorHue;    // Hue value for the ripple's color
  float growthRate; // Speed at which the ripple grows
  float currentRadius; // Current radius of the ripple

  Ripple(float x, float y) {
    this.x = x; // X-coordinate of the ripple's center
    this.y = y; // Y-coordinate of the ripple's center
    this.currentRadius = 5; // Start with a small initial radius
    this.maxRadius = random(150, 300); // Randomize the maximum size
    this.growthRate = random(1, 3);   // Randomize the growth speed
    this.colorHue = int(random(360)); // Randomize the color hue
  }

  void update() {
    // Increase the ripple size up to its maximum radius
    if (currentRadius < maxRadius) {
      currentRadius += growthRate;
    }
  }

  void display() {
    // Set the color mode to HSB for vibrant multicolored ripples
    colorMode(HSB, 360, 100, 100, 100);
    // Fill the ripple with its assigned hue and transparency
    fill(colorHue, 100, 100, 50);
    // Draw the ripple as a circle
    ellipse(x, y, currentRadius * 2, currentRadius * 2);
  }
}
