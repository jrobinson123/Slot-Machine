

boolean slotsRunning(){
  boolean slotsRunning = false;
  for(int i = 0; i<5; i++){
    if(reels[i].running == true){
      slotsRunning = true;
    }
  }
  return slotsRunning;
}
