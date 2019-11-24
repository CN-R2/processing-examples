/**
 * Bouncing Image
 *
 * Image version of the BouncingBall sketch. 
 */

PImage img;
int x, y;
float xSpeed = 3;
float ySpeed = 1;

void setup() {
  size(600, 400);
  
  // Load and resize the image
  img = loadImage("images/logo.png");
  img.resize(100, 0); // we use a zero to keep the original ratio
  
  // The image starts in the middle of the screen
  x = width/2;
  y = height/2;
}

void draw() {
  // Refresh the background and draw the image
  background(0);
  image(img, x, y);

  // If the image hits the left or right sides
  if ((x < 0) || (x > width - img.width)) {
    xSpeed *= -1; // reverse x axis direction
    applyRandomTint(); // change color
  }
  
  // If the image hits the top or bottom sides
  if ((y < 0) || (y > height - img.height)) {
    ySpeed *= -1; // reverse y axis direction
    applyRandomTint(); // change color
  }
  
  // Update the position of the image
  x += xSpeed;
  y += ySpeed;
}

/**
 * Pick a random RGB color to dye images in.
 */
void applyRandomTint() {
  color c = color(random(255), random(255), random(255));
  tint(c);
}
