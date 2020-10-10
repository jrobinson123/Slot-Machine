void makePicks(){
   // picks[1][0] = 5;
  //  picks[1][1] = 5; 
  //  picks[1][2] = 5;
  //  picks[1][3] = 5;
  //  picks[1][4] = 3;
  for(int i = 0; i < picks.length; i++){
    picks[1][i] = (int)random(0,8);
  }
 // println(picks);
  
  for(int i = 0; i<5; i++){
    if(picks[1][i] == 7){
      picks[0][i] = 0;
    }else{
      picks[0][i] = picks[1][i] + 1;
    }
  }
  for(int i = 0; i<5; i++){
    if(picks[1][i] == 0){
      picks[2][i] = 7;
    }else{
      picks[2][i] = picks[1][i] - 1;
    }
  }
  for(int x = 0; x<3;x++){
    for(int i = 0; i<5; i++){
      print(picks[x][i]);
    }
    println("");
  }
   
}
