void setup(){
  size(900, 900);
  background(255);
  
  int c = 100;
for(int i = 0; i < 50; i++){
  ellipse(0 + c, 0 + c, c*2, c*2);
  c = c - 1;
println(c);}


int q = 650;
for(int i = 0; i < 50; i++){
  ellipse(500, 300, q + 2, q + 2);
  q = q - 15;}


for(int i = 0; i < 5; i++){
  rect(i * 20 + 700, i * 20 + 600, 20, 20);}
  
  
  for(int i = 0; i < 10; i++){
    for(int j = 0; j < 10; j++){
      if((i+j) % 2 == 0){
        fill(0);}
        else{fill(255);}
      rect(i * 20 + 20, j * 20 + 650, 20, 20);}}
  
  
    println("1*1 = 1");
    println("2*1 = 2");
    println("3*1 = 3");
    println("4*1 = 4");
    println("5*1 = 5");
    println("6*1 = 6");
    println("7*1 = 7");
    println("8*1 = 8");
    println("9*1 = 9");
    println("10*1 = 10");
}
