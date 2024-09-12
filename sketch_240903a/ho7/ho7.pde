void setup(){
  int leeftijd = 17;
  
  switch(leeftijd){
    case 1:
    println("leeft net");
    break;
    case 2:
    case 3:
    println("baby");
    break;
    case 4:
    case 5:
    println("kleuter");
    break;
    case 6:
    case 7:
    case 8:
    case 9: 
    case 10:
    case 11:
    case 12:
    println("kind");
    break;
    case 13:
    case 14:
    case 15:
    case 16: 
    case 17:
    case 18:
    println("tiener");
    break;
    default:
    println("deze leeftijd ken ik niet");
    break;}
    
    
    int totaal = 0;
    totaal = 25 * 3 + (18 / 9);
      println(totaal);
    
    
    boolean kaas = true;
    boolean ham = false;
    boolean brood = true;
    boolean tostieijzer = false;
    if(tostieijzer && (brood && (ham || kaas))){
      println("tostie");}
    
    
    int week = 4;
    switch(week){
      case 1:
      println("maandag");
      break;
      case 2:
      println("dinsdag");
      break;
      case 3:
      println("woensdag");
      break;
      case 4:
      println("donderdag");
      break;
      case 5:
      println("vrijdag");
      break;
      case 6:
      println("zaterdag");
      break;
      case 7:
      println("zondag");
      break;
      default:
      println("bestaat niet");
      break;}
      
      
      int cijfer = 6;
      switch(cijfer){
        case 1:
        case 2:
        case 3:
        println("slecht");
        break;
        case 4:
        println("onvoldoende");
        break;
        case 5:
        println("matig");
        break;
        case 6:
        case 7:
        println("voldoende");
        break;
        case 8:
        case 9:
        case 10:
        println("goed");
        break;
        default:
        println("kan niet");
        break;}
        
  }
