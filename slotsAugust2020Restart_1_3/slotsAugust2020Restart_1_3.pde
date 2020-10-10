
//change stop checking to be in reel instead of block


//add bounce
Reel[] reels;
PImage[] images;

int[][] picks;
void setup(){
  frameRate(60);
  rectMode(CORNER);
  size(1200,800);
  loadImages();
  picks = new int[3][5];
  reels = new Reel[5];
  reels[0] = new Reel(50,0,50,4,400); 
  reels[1] = new Reel(275,1,50,4,400);
  reels[2] = new Reel(500,2,50,4,400);
  reels[3] = new Reel(725,3,50,4,400);
  reels[4] = new Reel(950,4,50,4,400);
  
  //block = new Block[3];
}

void draw(){
  background(200);
  for(int i = 0; i<reels.length;i++){
    reels[i].display();
  }
  for(int i = 0; i<reels.length;i++){
    reels[i].update();
  }

  fill(200);
  rect(0,700,width,100);
  rect(0,0,width,100);
}


void mousePressed(){
  if(slotsRunning() == false){
    makePicks();
    for(int i = 0; i<reels.length;i++){
      reels[i].startBlocks(picks[1][i]);
    }
  }
}
