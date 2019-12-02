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
int numberOfTiles = 4;
Tile[] tiles = new Tile[numberOfTiles];

void setup() {
  size(1200, 400);
  background(255);
  imageMode(CENTER);

  // Load all the images into the array and resize them
  for (int i = 0; i < pictures.length; i++){
    pictures[i] = loadImage("images/house_" + i + ".jpg");
    pictures[i].resize(width/(numberOfTiles * 2), 0);
  }

  // Create the tiles by giving them the set of images and their corresponding position
  for(int i = 0; i < numberOfTiles; i++) {
    // The tiles are evenly distributed on the horizontal axis
    tiles[i] = new Tile(pictures, (width/(numberOfTiles + 1)) * (i + 1), height/2);
  }
}

void draw() {
  // Display all the tiles on the screen
  for(int i = 0; i < numberOfTiles; i++) {
    tiles[i].display();
  }
}
