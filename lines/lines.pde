int step = 10;
float lastx = -999;
float lasty = -999;
float y = 50;
//int border = 20;
int borderx = 20;
int bordery = 10;
size(640, 400);
for(int x=borderx; x<=width-borderx; x+=step) {
  y = bordery + random(height - 2*bordery);
  if (lastx > -999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
}
