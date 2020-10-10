

class Reel{
  Block[] blocks;
  int x;
  boolean running;
  int index;
  int currentSymbol;
  int targetSymbol;
  int pixelsTravelled;
  
  int baseSpeed;
  int pixelsTillStoppage;
  int slowDownOffset;
  
  int speed;
  double speedDecimal;
  Reel(int x, int index, int baseSpeed,int slowDownOffset,int pixelsTillStoppage){
    this.x = x;
    this.index = index;
    this.baseSpeed = baseSpeed;
    this.pixelsTillStoppage = pixelsTillStoppage;
    this.slowDownOffset = slowDownOffset;
    blocks = new Block[8]; 
    
    blocks[7] = new Block(7,x,-900,index);
    blocks[6] = new Block(6,x,-700,index);
    blocks[5] = new Block(5,x,-500,index);
    blocks[4] = new Block(4,x,-300,index);
    blocks[3] = new Block(3,x,-100,index);
    blocks[2] = new Block(2,x,100,index);
    blocks[1] = new Block(1,x,300,index);
    blocks[0] = new Block(0,x,500,index);
    
    currentSymbol = 1;
    pixelsTravelled = 0;
    speed = 0;
    
  }
  void display(){
    for(int i = 0; i<blocks.length;i++){
      blocks[i].display();
    }
  }
  
  void update(){
    for(int i = 0; i<blocks.length;i++){
      blocks[i].update();
    }
    if(running){
      pixelsTravelled += speed;
    }
    if(pixelsTravelled >= 3200 + (200 * targetSymbol) - (200 * currentSymbol) - pixelsTillStoppage + (1600 * index)  && speed >0){
      if(pixelsTravelled == 3200 + (200 * targetSymbol) - (200 * currentSymbol) - pixelsTillStoppage + (1600 * index) && speed >0){
         for(int i = 0; i<8; i++){
           blocks[i].y += slowDownOffset;
         }
         pixelsTravelled+= slowDownOffset;   
      }
      speedDecimal *= 0.90;
      speed = roundDouble(speedDecimal);
      for(int i = 0; i<8; i++){
           blocks[i].setSpeed(speed);
      }
      if(speed == 0){
        currentSymbol = targetSymbol;
        running = false;
        for(int i = 0; i<8; i++){
           blocks[i].bounceIndex = 5;
        }  
      }
    }
    
  }
  void startBlocks(int targetSymbol){
    this.targetSymbol = targetSymbol;
    for(int i = 0; i<blocks.length;i++){
      blocks[i].startBlock(baseSpeed);
    }
    speed = baseSpeed;
    speedDecimal = baseSpeed;
    pixelsTravelled = 0;
  }
}
