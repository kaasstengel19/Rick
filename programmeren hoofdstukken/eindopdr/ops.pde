class Ops{ 
  int x;
  int y;
  
  float w;
  int h;
  
  boolean ml;
  boolean mr;
  boolean mu;
  boolean md;
  
   boolean Remove;
   
   boolean alive = true;

 
 int s;
  
 float left;
 float right;
 int top;
 int bottom;
  
  Ops(int startingX, int startingY, int startingW, int startingH){
    x = startingX;
    y = startingY;
    w = startingW;
    h = startingH;
    
    ml = false;
    mr = false;
    mu = false;
    md = false;
    
    s = 2;
    
    left = x - w;
    right = x + w;
    top = y - h;
    bottom = y + h;
  }
  
  void display(){
      if(alive){
    fill(255);
  stroke(255);
  rect(x + 69 - ox, y + 20 - oy, w, h);
  fill(0);
  rect(x + 69 - ox, y + 50 - oy, w, h);
  rect(x + 61 - ox, y + 25 - oy, w - 10, h - 10);
  rect(x + 50 - ox, y + 40 - oy, w, h - 25);
  rect(x + 86 - ox, y + 25 - oy, w - 10, h);
  stroke(0, 255, 0);
  noStroke();
  rect(x + 50 - ox, y + 32 - oy, w - 12, h - 22);
  fill(152, 157, 160);
  triangle(x + 53 - ox, y + 32 - oy, x + 53 - ox, y + 10 - oy, x + 44 - ox, y + 32 - oy);
  fill(0, 0, 0);
  stroke(255, 255, 255);
  ellipse(x + 77.5 - ox, y + 15 - oy, h, h);
  }
  }
  void move(){
     
    left = x - w;
    right = x + w;
    top = y - h;
    bottom = y + h * 2;
    
    y = y + s;
    
    if(y == 500){
      s =- 2;
  }
  if(y == 0){
    s =+2;
  }
  
  }
  void kill(){
    alive = false;
  }
}
