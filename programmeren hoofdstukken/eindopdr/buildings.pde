
void osso(int h, int l){
  stroke(0, 0, 0);
  fill(255, 130, 120);
  rect(h-ox, oy + l, 200, 200);
  fill(255, 130, 120);
  triangle(h-ox, oy + l, h * 3-ox, oy + l - 100, h + 200-ox, oy + l);
  fill(190, 200, 93);
  rect(h * 1.5-ox, oy + l + 110, 50, 90);
  fill(0, 180, 255);
  rect(h * 3-ox, oy + l + 45, 50, 50);
}
