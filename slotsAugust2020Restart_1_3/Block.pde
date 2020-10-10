

class Block{
  int index;
  int x,y;
  int speed;
  PImage image;
  int bounceIndex;
  int parentReelIndex;
  Block(int index, int x, int y, int parentReelIndex){
    this.index = index;
    this.x = x;
    this.y = y;
    this.parentReelIndex = parentReelIndex;
    speed = 0;
    image = images[index];
  }
  void display(){
    image(image,x,y,200,200);
  }
  void update(){
    if(y >= 700){
       y = -900 + (y - 700);
     }
     y+=speed;
  
    if(bounceIndex > 0){
      y-=10;
      bounceIndex--;
    }
  }
  void startBlock(int speed){
    this.speed = speed;
    if(index == 0){
      reels[parentReelIndex].running = true;
    }
  }
  void setSpeed(int speed){
    this.speed = speed;
  }
}
