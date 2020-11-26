/**
 * Altitude
 *
 * A randomizable version of Altitude, a poem by Lola Ridge (1873-1941).
 * Everytime the mouse is pressed, a new version of the poem is displayed.
 */

StringList poem;

void setup() {
  size(750, 400);
  background(255);
  pixelDensity(displayDensity()); // For high density displays
  textAlign(LEFT);
  textSize(18);
  fill(0);

  // Loads the lines into a StringList
  poem = new StringList(loadStrings("altitude.txt"));

  // Displays the original version of the poem.
  displayThePoem();
}

void displayThePoem() {
  background(255);

  // Displays each line of the poem.
  for (int i = 0; i < poem.size(); i++) {
    text(poem.get(i), 50, i * 22 + 50);
  }

  // Displays the title in the bottom right corner of the screen.
  text("Altitude, by Lola Ridge", 500, 350);
}

void mousePressed() {
  // Randomly changes the order of the lines in the list.
  poem.shuffle();

  // Displays the updated version of the poem.
  displayThePoem();
}

/**
 * This is intentionally empty. We don't need a draw() function as
 * we use mousePressed() to call our own displayThePoem() function.
 * However, the mousePressed() function won't work if draw() is not
 * declared.
 */
void draw() {}
