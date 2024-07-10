float xstep=10;
float ystep=10;
float lastx=20;
float lasty=50;
float y = 50;
//int border = 20;
int borderx = 20;
int bordery = 10;
size(640, 480);
for (int x=borderx; x<=width-borderx; x+=xstep) {
  //y = bordery + random(height - 2*bordery);
  ystep = random(20) - 10; // range -10 to 10
  y+=ystep;
  line(x, y, lastx, lasty);
  lastx = x;
  lasty = y;
}
