float xstep = 1;
float SENT = -999;
float lastx = SENT;
float lasty = SENT;
float angle=0;
float y = 50;
for (int x=20; x<=480; x+=xstep) {
  float rad = radians(angle);
  y = 50 + (sin(rad) * 40);
  if (lastx > SENT) {
    line(x,y,lastx,lasty);
  }
  lastx = x;
  lasty = y;
  angle++;
}
