int diam = 10;
float centX, centY;

void setup() {
  size(240*2, 136*2);
  frameRate(50);
  smooth();
  background(180);
  centX = width/2;
  centY = height/2;
  stroke(0);
  strokeWeight(5);
  fill(255, 50);
}

void draw() {
  if (diam <= width*2) {
    background(180);
    strokeWeight(5);
    fill(255, 50);
    ellipse(centX, centY, diam, diam);
    
    strokeWeight(1);
    noFill();
    int tempdiam = diam;
    while (tempdiam > 10) {
      ellipse(centX, centY, tempdiam, tempdiam);
      tempdiam -= 10;
    }
    diam += 10;
  } else {
    background(180);
    diam = 10;
  }
}
