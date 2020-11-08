/**
 * WordList
 *
 * Displays random passwords that you propably shouldn't use, extracted
 * from the well-known "RockYou" password list. Note that we only used
 * 100,000 of the 14,341,564 the original contains (for file size reasons).
 * These unique passwords were made public in 2009 when a company called
 * RockYou was hacked, causing the dump of its 32,603,388 user accounts
 * database.
 */

String[] wordList;

void setup() {
  size(600, 400);
  background(255);
  textAlign(CENTER, CENTER);
  textSize(26);
  fill(0);

  // Slows down the frameRate to 5 frames per second
  frameRate(5);

  // Populates the wordList Array with each line of the password.txt file
  wordList = loadStrings("passwords.txt");
}

void draw() {
  background(255);

  // Stores a random password (from the whole list) in a String
  String randomPassword = wordList[floor(random(wordList.length))];

  // Displays the text
  text("You probably shouldn't use", 300, 150);
  fill(255, 0, 0);
  text(randomPassword, 300, 200);
  fill(0);
  text("as password.", 300, 250);
}
