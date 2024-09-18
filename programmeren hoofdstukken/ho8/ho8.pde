void setup(){
  size(1280, 900);
  background(255);
  
  int teller = 1;
  while(teller <= 10){
    println("teller " + teller);
    teller++;}
    
    
    for(int i = 1; i<=10; i++){
      println("variabele is " + i);}
      
      
      for(int i = 0; i < 3; i++){
        line(30, i * 30, 30, 30);
      line(20, i * 20, 20, 20);
    line(10, i * 10, 10, 10);
  line(40, i * 40, 40, 40);
line(50, i * 50, 50, 50);
line(60, i * 60, 60, 60);
line(70, i * 70, 70, 70);
line(80, i * 80, 80, 80);
line(100, i * 100, 100, 100);
line(90, i * 90, 90, 90);}


int x = 120;
int y = 10;
for(int i = 0; i < 5; i++){
  for(int j = 0; j < 2; j++){
  rect(x, y, 80, 80);
  y = y + 80;}
}
y = 10;
x = x + 10;


int c = 100;
for(int i = 0; i < 5; i++){
  ellipse(300, 100, c, c);
  c = c - 15;
println(c);}
  
  
  for(int i = 0; i < 5; i++){
    ellipse(300 - c/2, 250 - c/2, c * 4, c * 4);
    c = c - 5;}
    
    
    for(int i = 20; i >= 10; i--){
      println(i);}
      
      
      println("////////////////");
      int g1 = 0;
      int g2 = 1;
      int antwoord = 0;
      for(int i = 0; i < 10; i++){
        antwoord = g1 + g2;
        println(antwoord);
        g1 = g2;
        g2 = antwoord;}
}
