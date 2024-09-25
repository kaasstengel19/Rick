String[] a1 = new String[26];
int[] a2 = {2, 4, 6, 8, 10, 12, 14};
int[] a3 = {10, 9, 8, 7, 6 ,5 , 4, 3, 2, 1};
int[] a4 = new int[10];
boolean gevonden;
String[] a5 = {"Pieter", "Mohammed", "Josef", "Phaedon", "Jan"};
int[] a6 = {13, 13, 18, 90, 34, 43, 12, 13, 71, 113};
int ant = 0;

void setup(){
println(a2);
println(" ");
println(a3);
println(" ");
for(int i = 0; i < a4.length; i++){
  a4[i] = 12 + i * 12;
println(a4[i]);}
gevonden = false;
for(int i = 0; i < a5.length; i++){
    if(a5[i] == "Jan"){
      gevonden = true;}}
      println(gevonden); 
    a7(13);

}


void a7(int x){for (int j = 0; j < a6.length; j++) {
    if (a6[j] == x) {
      ant = ant + 1;
    } }
  println(ant);}
