int diam = 10;
float centX, centY;

void setup() {
  //size(500, 300);
  // TIC-80 dimensions.
  size(240, 136);
  
  // NES dimensions.
  // size(256, 240);
  // NTSC & TIC-80
  frameRate(60);
  smooth();
  background(180);
  centX = width/2;
  centY = height/2;
  stroke(0);
  strokeWeight(1);
  noFill();
  //strokeWeight(5);
  //fill(255, 50);
}

void draw() {
  if (diam <= 1000) {
    background(180);
    ellipse(centX, centY, diam, diam);
    diam += 10;
  }
}
