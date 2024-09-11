void setup() {
  int ham = 2;
  if(ham == 2){
    println("ja ham is 2");}
    
    
   int temperatuur = -2;
   if(temperatuur < 0){
      println("1" + true);}
      
   String sneeuw = "wit";
   if(sneeuw != "Geel"){
     println("2" + true);}
     
   int jantje = 6;
   if(jantje > 4){
     println("3" + true);}
     
   String datum = "01-04";
   String verjaardag = "01-04";
   if(verjaardag == datum){
     println("4" + true);}
     
   double lengte = 1.60;
   if(lengte <= 1.60){
     println("5" + true);}
     
   int stil = 15;
   if(stil >= 10){
     println("6" + true);}
     
     
   int kaas = 1;
   if(kaas > 2){
     println("teveel kaas");
   }else{
     println("genoeg kaas");}
     
   
   int leeftijd = 17;
   if(leeftijd < 2){
     println("baby");
   }else if(leeftijd < 4){
     println("kleuter");
   }else if(leeftijd < 12){
     println("kind");
   }else if(leeftijd < 20){
     println("tiener");
   }else if(leeftijd < 25){
     println("adolescent");
   }else if(leeftijd >= 25){
     println("volwassene");}
     
     
   boolean one = false;
   boolean two = false;
   boolean three = true;
   if(one == false && two == false && three == true){
     println("true");
   }else{
     println("false");}


   boolean q1 = true;
   boolean q2 = false;
   boolean q3 = false;
   boolean gameGehaald = true;
   
   if(q1 == true && q2 == true && q3 == true){
     println("quests completed");
   }else{
     println("finish quests");}
   if(gameGehaald == true){
     println("Congratulations!");}
     
     
   float cijfer1 = 8.3;
   float cijfer2 = 6.8;
   boolean diploma = false;
   boolean vrijstelling = false;
   boolean cumlaude = false;
   if(cijfer1 >= 5.5 && cijfer2 >= 5.5)
   {diploma = true;}
   if(diploma || vrijstelling)
   {println("Gefeliciteerd");}
   if(cijfer1 >= 8 && cijfer2 >= 8)
   {println("Gefeliciteerd met cumlaude!");}
   
   
   
}
