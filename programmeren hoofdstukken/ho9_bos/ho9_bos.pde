void boom(int b1, float b2, float b3, int b4){
  fill(120, 60, 40);
  rect(b1, b2, 150, b4);
  fill(10, 240, 20);
  ellipse(b1 + 60, b2 * 1.5, b3 * 1.5, b4);
  
  
}

void setup(){
  size(900, 900);
  background(50, 100, 255);
  boom(20, 300, 250, 600);
  boom(220, 300, 250, 600);
  boom(420, 300, 250, 600);
  boom(620, 300, 250, 600);
  boom(820, 300, 250, 600);
}
