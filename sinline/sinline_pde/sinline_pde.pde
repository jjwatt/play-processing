size(500, 100);
background(255);
strokeWeight(5);
smooth();
stroke(0, 30);
line(20, 50, 480, 50);
stroke(20, 50, 70);
int step = 10;
float SENT = -999;
float lastx = SENT;
float lasty = SENT;
int xstep = 1;
float angle=0;
float y = 50;
for (int x=20; x<=480; x+=xstep) {
  float rad = radians(angle);
  y = 50 + (sin(rad) * 40);
  //y = 50 + (pow(sin(rad), 1) * noise(rad*2) * 30);
  if (lastx > SENT) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
  angle++;
}
