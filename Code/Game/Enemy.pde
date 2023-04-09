class Enemy extends PEObject{

  Boolean dead;
  float vx;
  Enemy(PImage img,float x,float y) {
    super(img,x-80,y-80,80,80,0,width/2,y,0,0);
    vx = 0;
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
    posX = Math.max(0, Math.min(posX + vx, rightEdge - wid)); 
    println("posX:"+posX + "Vx:"+vx);
    posY = Math.max(0, Math.min(posY + velocityY, lowEdge - hei));
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
      velocityX *= -1;
      posX = leftEdge;
    }
    //// right
    if (velocityX >= rightEdge - wid) {
      velocityX *= -1;
      posX = rightEdge - wid;
    }
  }

  void deadJump(){
    //Value vy controls the jump height of copy Cat
    velocityY = -9;
    velocityX = 0;
    lowEdge = height +200;
    dead = true;
  }
}
