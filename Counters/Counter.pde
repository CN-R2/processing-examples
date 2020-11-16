/**
 * Counter class
 *
 * Very basic counter that starts at 0 and can only be incremented.
 *
 * @todo Add decrement and reset methods.
 */
class Counter {
  int count = 0;
  float x, y;
  float diameter = 80;
  float radius = diameter / 2;

  /**
   * Constructor for creating a new Counter object.
   *
   * @param x x coordinate of the center of the counter
   * @param y y coordinate of the center of the counter
   */
  Counter(float x, float y) {
    this.x = x;
    this.y = y;

    // Basic styling
    textAlign(CENTER, CENTER);
    textSize(28);
  }

  /**
   * Adds one to the current count.
   */
  void incrementCount() {
    count += 1;
  }

  /**
   * Displays the counter with a black circle and white text in
   * its center.
   */
  void display() {
    fill(0);
    circle(x, y, diameter);

    fill(255);
    text(count, x, y);
  }

  /**
   * Returns true or false depending on whether the mouse is over
   * the counter or not.
   */
  boolean isMouseOver() {
    /*
     * Calculates the distance between the mouse and the center
     * of the counter.
     */
    float distance = dist(mouseX, mouseY, x, y);

    // Since the counter is a circle, we check if we are within its radius.
    if (distance < radius) {
      return true;
    }

    return false;
  }
}
