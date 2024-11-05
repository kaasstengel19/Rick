int x = 0;
int y = 0;
int s = 3;
int p = 0;

int ox = 0;
int oy = 0;

PImage img;

float Opies = 30;

int points = 0;

Player p1;
Obstacle o1;
Ops s1;

boolean gameOver = false;
int levens = 3;

 boolean collide = false;

ArrayList<Bullet> bulletList;
ArrayList<Ops> opsList = new ArrayList<Ops>();

void setup() {
  size(1924, 1050, P2D);
p1 = new Player(0, 0, 15, 30);
bulletList = new ArrayList<Bullet>();
o1 = new Obstacle(50, 550, 200, 200);
img = loadImage("O-Block screen.jpeg");


start();

s1 = new Ops(900, 30, 15, 30);

}
void start(){
    opsList.clear();
    for(int i = 0; i < Opies; i++){
     opsList.add(new Ops(random(width * 3), random(height - 100), 15, 30)); 
    }
  }

void draw() {
  background(0, 255, 150);
println(bulletList.size());
  
  
  
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
  corner(600, 440);
  corner(-1320, 160);
  road2(-1320, 220);
  crossing(1560, 380);
  road(-600, 800);
  road(-1200, 800);
  road(-1800, 800);
  corner2(1560, 860);
  road(1670, 800);
  road(2270, 800);
  crossing(3100, 800);
  crossing(2640, 100);
  corner2(2640, 580);
  road(2750, 520);
  road(3000, 100);
  road(3050, 520);
  road(3050, 800);
  road2(3600, 0);
  road2(3600, 600);
  block(1925, 400);

  
  o1.render();
  println(p1.left);
 
  p1.display();
  p1.move();

   for (int i = 0; i < opsList.size();i++){

   opsList.get(i).display();
    opsList.get(i).move();
   }

 
 if (p1.right >= o1.left && p1.left <= o1.right &&
    p1.bottom >= o1.top && p1.top <= o1.bottom) {
    collide = true;
    if (p1.left < o1.left) {
        p1.x -= s * 1.7; // Move left
    } else if (p1.right > o1.right) {
        p1.x += s * 1.7; // Move right
    } else if (p1.top < o1.top) {
        p1.y -= s * 1.6; // Move up
    } else if (p1.bottom > o1.bottom) {
        p1.y += s * 1.7; // Move down
    }
}

//println(p1 + "p1");
//println(s1 + "s12"); 
for (int j = 0; j < opsList.size(); j++) {
     
   Ops s1 = opsList.get(j);
   
    if(s1.alive){if(p1.bottom >= s1.top && p1.top <= s1.bottom && p1.right >= s1.left && p1.left <= s1.right) {
      collide = true;
      if (p1.left < s1.left) {
          p1.x -= s * 1.7; // Move left
          levens = levens - 1;
          p1.x -= 60;
      } else if (p1.right > s1.right) {
          p1.x += s * 1.7; // Move right
          levens = levens - 1;
          p1.x += 60;
      } else if (p1.top < s1.top) {
          p1.y -= s * 1.6; // Move up
          levens = levens - 1;
          p1.y -= 60;
      } else if (p1.bottom > s1.bottom) {
          p1.y += s * 1.7; // Move down
          levens = levens - 1;
          p1.y += 60;
      }
    }
    }
}

textSize(50);
fill(255, 50, 50);
text("Lives = " + levens, 60, 60);
if(levens == 0){
  gameOver = true;}
  
  if(gameOver == true){
    //fill(255, 255, 255);
    //rect(0, 0, 1924, 1100);
    image(img, 0, 0, 1935, 1050);
    textSize(100);
    fill(255, 255, 0);
    text("Game Over", 750, 500);
  }
  
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
   //println(aBullet.bp1);
   
   for (int j = 0; j < opsList.size(); j++) {

   Ops s1 = opsList.get(j);

   if(aBullet.bp1 >= s1.left && 
   aBullet.bp2 >= s1.top && 
   aBullet.bp2 <= s1.bottom && 
   aBullet.bp1 <= s1.right){
   println("hit!");
   opsList.remove(j);
   s1.kill();
   bulletList.remove(i);
   points += 1;
   }
   }
 
 }
 
   
   textSize(50);
fill(255, 50, 50);
text("Points = " + points, 1670, 60);
}


        
//bullet
 class Bullet{
   float bp1;
   float bp2;
   float bd;
   float bs;
   
   boolean Remove;
 

   
   Bullet(float startingx, float startingy){
     bp1 = startingx;
     bp2 = startingy;
     
     bd = 6;
     
     bs = 30;
     
     Remove = false;
     
   }
     void render(){
       fill(255, 0, 255);
       circle(bp1 - ox, bp2 -oy, bd);
   }
   void move(){
     bp1 += bs;
   }
   void checkRemove(){
     if (bp1 > 2000+ox){
       Remove = true;
     }
     
 }
 }
//movement
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
    bulletList.add( new Bullet(p1.x + 115, oy + p1.y + 37) );
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


  
  
  
  
