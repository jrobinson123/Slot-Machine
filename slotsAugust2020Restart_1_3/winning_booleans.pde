

boolean allFive(){
  if(picks[1][0] == picks[1][1] 
  && picks[1][1] == picks[1][2]
  && picks[1][2] == picks[1][3]
  && picks[1][3] == picks[1][4]
  && picks[1][4] == picks[1][5]){
    return true;
  }else{
    return false;
  }
}

boolean fourLeft(){
  if(picks[1][0] == picks[1][1] 
  && picks[1][1] == picks[1][2]
  && picks[1][2] == picks[1][3]
  && picks[1][3] == picks[1][4]){
    return true;
  }else{
    return false;
  }
}

boolean fourRight(){
  if(picks[1][1] == picks[1][2]
  && picks[1][2] == picks[1][3]
  && picks[1][3] == picks[1][4]
  && picks[1][4] == picks[1][5]){
    return true;
  }else{
    return false;
  }
}

boolean threeMiddle(){
  if(picks[1][1] == picks[1][2]
  && picks[1][2] == picks[1][3]
  && picks[1][3] == picks[1][4]){
    return true;
  }else{
    return false;
  }
}

boolean threeLeft(){
  if(picks[1][0] == picks[1][1] 
  && picks[1][1] == picks[1][2]){
    return true;
  }else{
    return false;
  }
}

boolean threeRight(){
  if(picks[1][2] == picks[1][3]
  && picks[1][3] == picks[1][4]){
    return true;
  }else{
    return false;
  }
}


boolean twoInARowSplit(){
  if(picks[1][0] == picks[1][1]
  && picks[1][3] == picks[1][4]
  && picks[1][0] == picks[1][3]){
    return true;
  }else{
    return false;
  }
}

boolean upwardV(){
  if(picks[0][0] == picks[1][1] &&
     picks[1][1] == picks[2][2] &&
     picks[2][2] == picks[1][3] &&
     picks[1][3] == picks[0][4]){
       return true;
     }else{
       return false;
     }     
}

//boolean downwardV(){
//  if(picks[2][0] == picks[1][1] &&
     
//}
  
