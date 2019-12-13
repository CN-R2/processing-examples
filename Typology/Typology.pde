/**
 * Typology
 *
 * Art project based on the Framework Houses (1959-73) by Bernd and Hilla Becher.
 * Some of the pictures from their typology is displayed in a dynamic way, changing
 * the perception of the original artwork by the viewer.
 */

// Create the array that will contain the twelve images
PImage[] pictures = new PImage[12];

// Create the array that will contain all the tiles
int numberOfColumns = 5;
int numberOfRows = 3;
int numberOfTiles = numberOfColumns * numberOfRows;
Tile[] tiles = new Tile[numberOfTiles];

void setup() {
  size(800, 660);
  background(255);
  imageMode(CENTER);

  // Arbitrary width of the images (in pixels)
  int imgWidth = 100;

  // Load all the images into the array and resize them
  for (int i = 0; i < pictures.length; i++) {
    pictures[i] = loadImage("images/house_" + i + ".jpg");
    pictures[i].resize(imgWidth, 0);
  }

  // Create the tiles by giving them the set of images and their corresponding position
  for (int i = 0; i < numberOfColumns; i++) {
    for (int j = 0; j < numberOfRows; j++) {

      // The tiles are evenly distributed on both x and y axis
      float x = (width/(numberOfColumns + 1)) * (i + 1);
      float y = (height/(numberOfRows + 1)) * (j + 1);

      // Current index of the tiles array
      int index = i + (j * numberOfColumns);

      tiles[index] = new Tile(pictures, x, y);
    }
  }
}

void draw() {
  // Display all the tiles on the screen
  for (int i = 0; i < numberOfTiles; i++) {
    tiles[i].display();
  }
}
