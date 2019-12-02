/**
 * Tile class
 *
 * A tile is a container/frame for a set of images, displaying one at a time, at a
 * random frequency.
 *
 * @example
 * Tile myTile = new Tile(images, width/2, height/2);
 *
 * void draw() {
 *   myTile.display();
 * }
 */
class Tile {
  PImage[] pictures;
  PImage picture;
  float x;
  float y;
  float timer = millis();
  float lifetime = 0;

  /**
   * Constructor for creating a new Tile object.
   *
   * @param _pictures array of images to be displayed in the tile
   * @param _x x position of the Tile on the Processing window
   * @param _y y position of the Tile on the Processing window
   */
  Tile(PImage[] _pictures, float _x, float _y) {
    pictures = _pictures;
    x = _x;
    y = _y;

    // Initialize with a first random image and a random lifetime
    setRandomImage();
    lifetime = random(2000, 7000);
  }

  // Select a random image from the list of available images
  void setRandomImage() {
    picture = pictures[floor(random(pictures.length))];
  }

  /**
   * Display this tile on the screen. The image of the tile will change
   * whenever it exceeds its lifetime.
   */
  void display() {
    if (millis() > timer + lifetime) {
      setRandomImage();

      lifetime = random(2000, 7000);
      timer = millis() + lifetime;
    }

    image(picture, x, y);
  }
}
