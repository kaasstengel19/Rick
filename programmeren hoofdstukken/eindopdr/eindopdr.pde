int x = 0;
int y = 0;
int s = 3;
int p = 0;

int ox = 0;
int oy = 0;

boolean gameOver = false;
int levens = 3;

 boolean collide = false;

ArrayList<Bullet> bulletList;

void setup() {
  size(1924, 1050, P2D);
p1 = new Player(0, 0, 15, 30);
bulletList = new ArrayList<Bullet>();
o1 = new Obstacle(50, 550, 200, 200);
s1 = new Ops(900, 30, 15, 30);

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
  corner(600,440);
  corner(-1320, 160);
  road2(-1320, 220);
  crossing(1560, 380);
  road(-600, 800);
  road(-1200, 800);
  road(-1800, 800);
  
  o1.render();
  println(p1.left);
 
  p1.display();
  p1.move();
  
  s1.display();
  s1.move();
  
 //    //if (p1.top <= o1.bottom &&
 //p1.bottom >= o1.top &&
 // p1.right >= o1.left &&
 // p1.left <= o1.left){
 // collide = true; 
 // p1.x -= s * 2;
 // collide = false;
 // }

 //  if (p1.top >= o1.bottom &&
 //p1.bottom <= o1.top &&
 //p1.left <= o1.right &&
 // p1.right >= o1.right){
 // collide = true; 
 // p1.x += s * 2;
 // collide = false;
 // }
 
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
   if (p1.right >= s1.left && p1.left <= s1.right &&
    p1.bottom >= s1.top && p1.top <= s1.bottom) {
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

textSize(50);
fill(255, 50, 50);
text("lives = " + levens, 60, 60);
if(levens == 0){
  gameOver = true;}
  
  if(gameOver == true){
    fill(255, 255, 255);
    rect(0, 0, 1924, 1100);
    textSize(80);
    fill(255, 0, 0);
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
 
 
   if(aBullet.bp1 >= s1.left && aBullet.bp2 >= s1.top && aBullet.bp2 <= s1.bottom){
   println("hit!");
   s1.kill();
   bulletList.remove(i);
   
 }
}

 
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
     
     bd = 5;
     
     bs = 30;
     
     Remove = false;
     
   }
     void render(){
       fill(255, 0, 255);
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
    bulletList.add( new Bullet(p1.x - ox + 115, oy + p1.y + 37) );
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
  Obstacle o1;
  Ops s1;
