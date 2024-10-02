float x = 0;
float y = 0;
int s = 3;
int p = 0;

float ox = 0;
float oy = 0;

ArrayList<Bullet> bulletList;

void setup() {
  size(1924, 1055, P2D);
p1 = new Player(0, 0, 15, 30);
bulletList = new ArrayList<Bullet>();
}

void draw() {
  background(0, 255, 150);
println(bulletList.size());
  
  
  
  osso(50, 550);
  road(-600, 100);
  road(-1200, 100);
  road(0, 100);
  road(600, 100);
  road(1200, 100);
  road(1800, 100);
  road2(342, 200);
  road(0, 800);
  road2(600, 500);
  road(720, 380);
  corner(600,440);
  corner(-1320, 160);
  road2(-1320, 220);
  crossing(1560, 380);
  

 
  p1.display();
  p1.move();
  
  

  
  
 for (int i = 0 ; i < bulletList.size();i++){
   Bullet aBullet = bulletList.get(i);
 //for (Bullet aBullet : bulletList){
   aBullet.render();
   aBullet.move();
   aBullet.checkRemove();
   
    if (aBullet.Remove == true){
     bulletList.remove(aBullet);
   }
 }
   for (int i = bulletList.size()-1; i >= 0; i=i-1){
 Bullet aBullet = bulletList.get(i);
}
   
}
 class Bullet{
   float bp1;
   float bp2;
   int bd;
   int bs;
   
   boolean Remove;
   
   Bullet(float startingx, float startingy){
     bp1 = startingx;
     bp2 = startingy;
     
     bd = 5;
     
     bs = 20;
     
     Remove = false;
   }
     void render(){
       fill(255, 0, 0);
       circle(bp1, bp2, bd);
   }
   void move(){
     bp1 += bs;
   }
   void checkRemove(){
     if (bp1 > 1950){
       Remove = true;
     }
 }
 }

void keyPressed(){
  if (key == 'a'){
    p1.ml = true;
  }
  if (key == 'd'){
    p1.mr = true;
  }
  if (key == 'w'){
    p1.mu = true;
  }
  if (key == 's'){
    p1.md = true;
  }
    if (key == ' '){
    bulletList.add( new Bullet(x - ox + 115, oy + y + 37) );
  }
}

void keyReleased(){
  if (key == 'a'){
    p1.ml = false;
  }
  if (key == 'd'){
    p1.mr = false;
  }
  if (key == 'w'){
    p1.mu = false;
  }
  if (key == 's'){
    p1.md = false;
  }
}


  
  
  Player p1;
