/**
 * Pixelate
 *
 * Playing with the official Processing logo. By moving the mouse
 * from left to right, we pixelate more or less the image.
 */

PImage img;
float rectSize;

void setup() {
  size(600, 600);
  noStroke();
  rectMode(CENTER);

  // Default definition
  rectSize = width / 10;

  // Load and resize the image
  img = loadImage("images/p3Logo.png");
  img.resize(width, height);
}

void draw() {
  background(255);

  for (int x = 0; x < width; x += rectSize) {
    for (int y = 0; y < width; y += rectSize) {
      // Set the color of the rectangle from the reference image
      fill(img.get(x, y));
      rect(x, y, rectSize, rectSize);
    }
  }

  // Map the size of the rectangles on the x position of the mouse
  rectSize = map(mouseX, 0, width, width / 10, width / 60);
}
