/**
 * Counters
 *
 * A rather boring example to explain how classes work in Processing.
 * Five instances of the "Counter" class are created and displayed on
 * the screen.
 */

// Creates an array that will contain 5 "Counter" objects.
Counter[] counters = new Counter[5];

void setup() {
  size(600, 200);
  background(255);

  /**
   * Creates all counters with their coordinates and stores them
   * in the counters array.
   */
  for (int i = 0; i < counters.length; i++) {
    counters[i] = new Counter((i * 100) + 100, height / 2);
  }
}

void draw() {
  // Displays all counters.
  for (int i = 0; i < counters.length; i++) {
    counters[i].display();
  }
}

void mousePressed() {
  for (int i = 0; i < counters.length; i++) {
    // Checks if we are currently pointing to the current counter.
    if (counters[i].isMouseOver()) {
      // Increments the current counter's value.
      counters[i].incrementCount();
    }
  }
}
