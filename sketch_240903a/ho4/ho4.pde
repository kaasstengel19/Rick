void setup(){
  int a = 2;
  int b = 110;
  int c = 198;
  int d = 32;
  
  int e = 15;
  int f = 2;
  int g = 31;
  int h = 3;
  int i = 10;
  int j = 5;
  int k = 38;
  int l = 4;
  float totaal = 0;
  
  fill(a, b, c);
  rect(c, b, b, b);
  size(600, 600);
  
  totaal = e % f;
  println(totaal);
  totaal = g % h;
  println(totaal);
  totaal = i % j;
  println(totaal);
  totaal = k % l;
  println(totaal);
  
  e = e * i;
  println(e);
  k = k * h;
  println(k);
  l = l * c;
  println(l);
  
  println(Math.max(12, 20));
  println(Math.sqrt(16));
  println(Math.min(13, 8));
  
  float m = 600.0;
  float n = 3600.0;
  float o = 24.0;
  float p = 365.0;
  
  totaal = m / n;
  println(totaal);
  totaal = totaal / o;
  println(totaal);
  totaal = totaal / p;
  println(totaal);
  
  float q = 4.5;
  float r = 7.3;
  float s = 6.5;
  
  totaal = q + r + s;
  println(totaal);
  totaal = totaal / 3;
  println(totaal);
}
