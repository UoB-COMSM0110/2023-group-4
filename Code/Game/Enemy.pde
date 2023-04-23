class Enemy extends PEObject{

  Boolean dead;
  float vx;
  int modeNumber;
  Enemy(PImage img,float x,float y) {
    super(img,x-80,y+10,60,60,0,width,y+10,0,0);
    vx = -5;
    dead = false;
  }
  void setX(float x){
    this.posX = x-wid;
  }
  @Override void update() {
    velocityY += gravity;
    if (abs(velocityY) < 0.2) {
      velocityY = 0;
    }
    if (velocityY > 3 * speedLimit) {
      velocityY = 3 * speedLimit;
    }
    posX = Math.max(0, Math.min(posX + vx, rightEdge - wid)); 
    posY = Math.max(0, Math.min(posY + velocityY, lowEdge-hei));
    if(posY == lowEdge-hei && dead == false){
      if(modeNumber == 1){
        velocityY = 0;
      }
      else if(modeNumber == 2){
        velocityY = -6;
      }
      else if(modeNumber == 3){
        velocityY = -9;
      }
    }
    checkBoundaries();
  }
  @Override void display() {
    fill(255, 255, 0);
    //rect(posX, posY, wid, hei);
    image(img,posX, posY, wid, hei);
  }

  @Override void checkBoundaries() {
    ////check boundaries
    ////left
    if (posX <= leftEdge) {
      vx *= -1;
      posX = leftEdge;
    }
    //// right
    if (posX >= rightEdge-wid ) {
      vx *= -1;
      posX = rightEdge-wid;
    }
  }

  void deadJump(){
    //Value vy controls the jump height of copy Cat
    velocityY = -9;
    vx = 0;
    lowEdge = height +200;
    dead = true;
  }

  void setVx(String difficulty){
    if(difficulty == "EASY"){
      vx -= 1;
    }else{
      vx -= 2;
    }
  }

  void modeOne(){
    copyCat.modeNumber = 1;
    velocityY = 0;
  }
  void modeTwo(){
    copyCat.modeNumber = 2;
    velocityY = -6;
  }
  void modeThree(){
    copyCat.modeNumber = 3;
    velocityY = -9;
  }
}
