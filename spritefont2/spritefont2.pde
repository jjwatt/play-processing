PImage spriteSheet;
PImage [] sprites;
int spriteWidth = 32;
int spriteHeight = 32;
int numSprites = 26;
int cursorX = 0;
int cursorY = 0;
int numX = 10;
int numY = 6;
PImage getSprite(PImage spriteSheet, int num) {
   int x = (num % numX) * spriteWidth;
   int y = (num / numX) * spriteHeight;
   PImage sprite = new PImage();
   // if sprite number mod 10 == 0, multiple of 10
   if (num % numX == 0) {
     // e.g. if 11 11 div 10 == 1
     println("y: ", y);
   }
   sprite = spriteSheet.get(x, y, spriteWidth, spriteHeight);
   return sprite;
}
void setup() {
  size(640, 480);
  // this is a 32x32 font with 6 down and 10 accross.
  spriteSheet = loadImage("../42_CREW.png");  
}

void draw() {
  background(220);
  //PImage a_sp = getSprite(spriteSheet, 0);
  //PImage b_sp = getSprite(spriteSheet, 1);
  //PImage k_sp = getSprite(spriteSheet, 10);
  PImage c_sp = getSprite(spriteSheet, 2);
  PImage o_sp = getSprite(spriteSheet, 14);
  PImage n_sp = getSprite(spriteSheet, 13);
  PImage s_sp = getSprite(spriteSheet, 18);
  PImage alien_sp = getSprite(spriteSheet, 49);
  int nudge = 21;
  image(c_sp,
    1 * (width / nudge) + 10,
    10);
  image(o_sp,
    2 * (width / nudge) + 10,
    10);
  image(n_sp,
    3 * (width / nudge) + 10,
    10);
  image(s_sp,
    4 * (width / nudge) + 10,
    10);
  image(alien_sp,
    1 * (width / nudge) + 10,
    10+32);
  //for (int i = 0; i < 15; i++) {
    //if (i % 9 == 0) {
    //}
    //image(sprites[i],
    //      i * (width / 15) + 10,
    //      10);
}
