void road(int r, int d) {
  fill(60, 60, 70);
  noStroke();
  rect(r-ox, oy + d, 600, 120);
  fill(255, 255, 0);
  rect(r-ox + 25, oy + d + 50, 50, 15);
  rect(r-ox + 125, oy + d + 50, 50, 15);
  rect(r-ox + 225, oy + d + 50, 50, 15);
  rect(r-ox + 325, oy + d + 50, 50, 15);
  rect(r-ox + 425, oy + d + 50, 50, 15);
  rect(r-ox + 525, oy + d + 50, 50, 15);
}



void road2(int k, int l) {
  fill(60, 60, 70);
  noStroke();
  rect(k-ox, oy + l, 120, 600);
  fill(255, 255, 0);
  rect(k-ox + 50, oy + l + 25, 15, 50);
  rect(k-ox + 50, oy + l + 125, 15, 50);
  rect(k-ox + 50, oy + l + 225, 15, 50);
  rect(k-ox + 50, oy + l + 325, 15, 50);
  rect(k-ox + 50, oy + l + 425, 15, 50);
  rect(k-ox + 50, oy + l + 525, 15, 50);
}


void corner(int u, int o){
  fill(60, 60, 70);
 rect(u-ox, o, 60, 60);
 rect(u-ox + 25, oy + o - 40, 60, 60);
 rect(u-ox + 80, oy + o - 60, 60, 60);
 rect(u-ox + 60, oy + o, 60, 60);
 fill(255, 255, 0);
 rect(u-ox + 55, oy + o + 28, 15, 15);
 rect(u-ox + 70, oy + o + 13, 15, 15);
 rect(u-ox + 85, oy + o - 2, 15, 15);
 }
 
 void crossing(int d, int a){
     fill(60, 60, 70);
  noStroke();
  rect(d-ox, oy + a - 180, 120, 600);
  fill(255, 255, 0);
  rect(d-ox + 50, oy + a - 155, 15, 50);
  rect(d-ox + 50, oy + a - 55, 15, 50);
  rect(d-ox + 50, oy + a + 35, 15, 50);
  rect(d-ox + 50, oy + a + 135, 15, 50);
  rect(d-ox + 50, oy + a + 235, 15, 50);
  rect(d-ox + 50, oy + a + 335, 15, 50);
  
    fill(60, 60, 70);
  noStroke();
  rect(d-ox - 240, oy + a, 600, 120);
  fill(255, 255, 0);
  rect(d-ox - 215, oy + a + 50, 50, 15);
  rect(d-ox - 115, oy + a + 50, 50, 15);
  rect(d-ox - 15, oy + a + 50, 50, 15);
  rect(d-ox + 85, oy + a + 50, 50, 15);
  rect(d-ox + 185, oy + a + 50, 50, 15);
  rect(d-ox + 285, oy + a + 50, 50, 15);
 }
 
 void corner2(int u, int o){
fill(60, 60, 70);
 rect(u-ox + 30, o - 40, 60, 60);
 rect(u-ox + 50, oy + o - 60, 60, 60);
 rect(u-ox, oy + o - 90, 60, 60);
 rect(u-ox + 70, oy + o, 60, 60);
 fill(255, 255, 0);
 rect(u-ox + 85, oy + o - 15, 15, 15);
 rect(u-ox + 70, oy + o - 30, 15, 15);
 rect(u-ox + 55, oy + o - 45, 15, 15);
 }
 
 void block(int x, int y){
   fill(255, 0, 0);
   rect(x-ox, oy+y, 20, 30);
   fill(255, 255, 255);
   rect(x-ox, oy+y + 30, 20, 30);
   fill(255, 0, 0);
   rect(x-ox, oy+y + 60, 20, 30);
 }
