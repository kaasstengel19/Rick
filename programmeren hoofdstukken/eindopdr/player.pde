class Player {
  
  int x;
  int y;
  
  int w;
  int h;
  
  boolean ml;
  boolean mr;
  boolean mu;
  boolean md;
  
  int s;
  
  Player(int startingX, int startingY, int startingW, int startingH){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
    ml = false;
    mr = false;
    mu = false;
    md = false;
    
    s = 3;
    
  }
  
  void display(){
      fill(255);
  stroke(255);
  rect(x + 69 - ox, y + 20 - oy, w, h);
  fill(0);
  rect(x + 69 - ox, y + 50 - oy, w, h);
  rect(x + 61 - ox, y + 25 - oy, w - 10, h);
  rect(x + 86 - ox, y + 25 - oy, w - 10, h - 15);
  rect(x + 86 - ox, y + 40 - oy, w, h - 25);
  stroke(0, 255, 0);
  rect(x + 99 - ox, y + 35 - oy, w - 12, h - 23);
  rect(x + 99 - ox, y + 35 - oy, w - 5, h - 27);
  fill(0, 0, 0);
  stroke(255, 255, 255);
  ellipse(x + 77.5 - ox, y + 15 - oy, h, h);
  }
  
  
  void move(){
    if (ml == true){
     x -= s;
         if((x-ox) < 100){
      ox -= s;}

    }
    
    if (mr == true){
      x += s;
          if((x-ox) > 1700){
    ox += s;}
    }
    
    if (mu == true){
      y -= s;
    }
    
    if (md == true){
      y += s;
    }
      if (y == 0) {
    y =+ s;
  }
  if (y > 980) {
    y = y - s;
  }

}
}
