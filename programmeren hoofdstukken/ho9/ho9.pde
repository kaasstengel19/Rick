void gemiddelde(){
  int g1 = 4;
  int g2 = 2;
  int ant = 0;
  ant = (g1 + g2) / 2;
  println("Het gemiddelde is = " + ant);}
  
   

int gem(int g5, int g6){
  int totaal;
  totaal = (g5 + g6) / 2;
  return totaal;}
  
  

void vierkant(int x, int y, int q, int w){
  //top line
  line(x, y, x+q, y);
  //bottom line
  line(x, y+w, x+q, y+w);
  //left line
  line(x, y, x, y+w);
  //right line
  line(x+q, y, x+q, y+w);
}

String zin;
String saak(String kaas, String is, String lekker, String toch){
  String antwoord;
  antwoord = kaas +" " + is + " " + lekker + " " + toch;
  return antwoord;}

void setup(){
  background(100, 135, 170);
  size(900, 900);
gemiddelde();
println(gem(30, 60));
zin = saak("kaasje", "is", "gewoon", "lekker");
println(zin);
for(int i = 0; i < 5; i++){
    fill(255, 255, 255);
  ellipse(900 - c * 5, 450, c * 10, c * 10);
    c = c - 2;}
    tekenDriehoek(200, 400, 400, 600, 200, 600);
}

int c = 15;

void draw(){ 
  
  stroke(200, 200, 200);
  vierkant(90, 100, 90, 100);
  
}

void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3){
    triangle(x1, y1, x2, y2, x3, y3);
}
