PImage spriteSheet;
PImage [] sprites;
int spriteWidth = 54;
int spriteHeight = 71;
int numSprites = 26;
int cursorX = 0;
int cursorY = 0;
void setup() {
  size(800, 600);
  // this is a 32x32 font with 6 down and 10 accross.
  spriteSheet = loadImage("c64bitmapfont.png");
  sprites = new PImage[numSprites];
  for (int i = 0; i < numSprites; i++) {
    sprites[i] = spriteSheet.get(
      i * spriteWidth,
      cursorY,
      spriteWidth,
      spriteHeight);
    // if i is a multiple of 10, we need to move down a row
    //if ( i % 10 == 0) {
    //   println("i: ", i);
    //   println("i % 10: ", (i % 10));
    //   cursorY = cursorY + 32;
    //   println("Running conditional");
    //   println("cursorY: ", cursorY);
    //   println("cursorX: ", cursorX);
    //}
     //if (cursorX >= spriteWidth * 10) {
     //  cursorX = 0;
     //}
  }
}

void draw() {
  background(220);
  for (int i = 0; i < 15; i++) {
    //if (i % 9 == 0) {
    //}
    image(sprites[i],
          i * (width / 15) + 10,
          10);
  }
}
