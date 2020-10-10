

void checkForWins(){
  if(allFive()){
    
  }else if(fourLeft()){
    //up diagonal
    if(picks[1][0] == picks[0][4]){
    //down diagonal
    }else if(picks[1][0] == picks[2][4]){
    //no special case
    }else{
      
    }
  }else if(fourRight()){
    //up diagonal
    if(picks[1][4] == picks[0][0] ){
      
    //down diagonal
    }else if(picks[1][4] == picks[2][0] ){
     
    //no special case
    }else{
    }
    
  }else if(threeMiddle()){
    //both diagonal up
    if(picks[1][2] == picks[0][0] && picks[1][2] == picks[0][4]){
    
    //both diagonal down
    }else if(picks[1][2] == picks[2][0] && picks[1][2] == picks[2][4]){
    
    //upward snake
    }else if(picks[1][2] == picks[2][0] && picks[1][2] == picks[1][4]){
    
    //downward snake
    }else if(picks[1][2] == picks[0][0] && picks[1][2] == picks[2][4]){
    
    //bottom occurs 5 times
    }else if(picks[2][2] == picks[0][0] && picks[2][2] == picks[0][4]){
    
    //top occurs 5 times
    }else if(picks[0][2] == picks[2][0] && picks[0][2] == picks[2][4]){
    
    //3 in a row middle plus two outside
    }else if(picks[1][0] == picks[1][4]){
      
    //no special case
    }else{
    }
    
  }else if(threeLeft()){
    //down checkerboard
    if(picks[1][0] == picks[2][3] && picks[1][0] == picks[1][4]){
    //up checkerboard
    }else if(picks[1][0] == picks[1][3] && picks[1][0] == picks[1][4]){
    //hanging edge 
    }else if(picks[1][0] == picks[1][4]){
    //2 down
    }else if(picks[1][0] == picks[2][3] && picks[1][0] == picks[2][4]){
    //2 up
    }else if(picks[1][0] == picks[0][3] && picks[1][0] == picks[0][4]){
    //3 in a row plus 2 in a row normal
    }else if(picks[1][3] == picks[1][4]){
     //no special case
    }else{
    }
    
  }else if(threeRight()){
    
    if(picks[1][0] == picks[0][1] && picks[0][1] == picks[1][2]){
      //up checkerboard
    }else if(picks[1][0] == picks[2][1] && picks[2][1] == picks[1][2]){
      //down checkerboard
    }else if(picks[1][0] == picks[1][2]){
      //hanging edge
    }else if(picks[0][0] == picks[0][1] && picks[0][1] == picks[1][2]){
      //two up
    }else if(picks[2][0] == picks[2][1] && picks[2][1] == picks[1][2]){
      //two down
    }else if(picks[1][0] == picks[1][1]){
      //3 in a row plus 2 in a row normal
    }else{
      //no special case
    } 
  }else if(twoInARowSplit()){
    if(picks[1][1] == picks[0][2]){
      //head
    }else if(picks[1][1] == picks[2][2]){
      //tail
    }else{
      //no special case
    }
  }else if(picks[2][0] == picks[2][1] &&
           picks[2][1] == picks[1][2] &&
           picks[1][2] == picks[0][3] && 
           picks[0][3] == picks[0][4]){
           //upward boomerang
    
  }else if(picks[0][1] == picks[0][1] &&
           picks[0][1] == picks[1][2] &&
           picks[1][2] == picks[2][3] &&
           picks[2][3] == picks[2][4]){
           //downward boomerang
    
  }else if(picks[1][0] == picks[1][1] &&
  picks[1][3] == picks[1][4]){
    //two in a row split, different symbol
  }else if(picks[1][0] == picks[1][1] &&
  picks[1][2] == picks[1][3]){
    //two in a row, different symbol left
  }else if(picks[1][1] == picks[1][2] &&
  picks[1][3] == picks[1][4]){
    //two in a row, different symbol right
  }
}
