class Obstacle{
 int h;
 int l;
 int w;
 int p;
 
 int left;
 float right;
 int top;
 float bottom;

  
  Obstacle(int sh, int sl, int sw, int sp){
    h = sh;
    l = sl;
    w = sw;
    p = sp;
    
  
    
    left = (h - w/2) - 1200;
    right = h + w/1.5;
    top = l - p/2;
    bottom = l + p/1.1;
  }

  
  
  void render(){
    //huis
      stroke(0, 0, 0);
  fill(255, 130, 120);
  rect(h-ox, oy + l, w, p);
  fill(255, 130, 120);
  triangle(h-ox, oy + l, h * 3-ox, oy + l - 100, h + 200-ox, oy + l);
  fill(190, 200, 93);
  rect(h * 1.5-ox, oy + l + 110, h, p - 110);
  fill(0, 180, 255);
  rect(h * 3-ox, oy + l + 45, h, h);
  
        stroke(0, 0, 0);
  fill(255, 255, 0);
  rect(h - 300-ox, oy + l, w, p);
  fill(0, 0, 0);
  triangle(h- 300-ox, oy + l, h * 3 - 300-ox, oy + l - 100, h - 100-ox, oy + l);
  fill(190, 200, 93);
  rect(h * 1.5 - 300-ox, oy + l + 110, h, p - 110);
  fill(0, 180, 255);
  rect(h * 3 - 300-ox, oy + l + 45, h, h);
  
         stroke(0, 0, 0);
  fill(152, 90, 39);
  rect(h - 600-ox, oy + l, w, p);
  fill(155, 0, 155);
  triangle(h- 600-ox, oy + l, h * 3 - 600-ox, oy + l - 100, h - 400-ox, oy + l);
  fill(190, 200, 93);
  rect(h * 1.5 - 600-ox, oy + l + 110, h, p - 110);
  fill(0, 180, 255);
  rect(h * 3 - 600-ox, oy + l + 45, h, h);
  
           stroke(0, 0, 0);
  fill(255, 0, 238);
  rect(h - 900-ox, oy + l, w, p);
  fill(0, 255, 0);
  triangle(h- 900-ox, oy + l, h * 3 - 900-ox, oy + l - 100, h - 700-ox, oy + l);
  fill(190, 200, 93);
  rect(h * 1.5 - 900-ox, oy + l + 110, h, p - 110);
  fill(0, 180, 255);
  rect(h * 3 - 900-ox, oy + l + 45, h, h);
  
             stroke(0, 0, 0);
  fill(0, 255, 255);
  rect(h - 1200-ox, oy + l, w, p);
  fill(255, 135, 0);
  triangle(h- 1200-ox, oy + l, h * 3 - 1200-ox, oy + l - 100, h - 1000-ox, oy + l);
  fill(190, 200, 93);
  rect(h * 1.5 - 1200-ox, oy + l + 110, h, p - 110);
  fill(0, 180, 255);
  rect(h * 3 - 1200-ox, oy + l + 45, h, h);
}
}
