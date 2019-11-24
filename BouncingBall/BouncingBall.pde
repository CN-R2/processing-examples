/**
 * Bouncing Ball
 *
 * Simple example of a Processing sketch classic: an ellipse
 * bouncing off the walls.
 */

int x, y;
float diameter = 50;
float radius = diameter / 2;
float xSpeed = 6;
float ySpeed = 2;

void setup() {
  size(600, 400);

  // The ellipse starts in the middle of the screen
  x = width/2;
  y = height/2;
}

void draw() {
  // Refresh the background and draw the ellipse
  background(255);
  ellipse(x, y, diameter, diameter);

  // Inverse the direction if the ball hit left or right sides
  if ((x < radius) || (x > width - radius)) {
    xSpeed *= -1;
  }

  // Inverse the direction if the ball hit top or bottom sides
  if ((y < radius) || (y > height - radius)) {
    ySpeed *= -1;
  }

  // Update the position of the ellipse
  x += xSpeed;
  y += ySpeed;
}
