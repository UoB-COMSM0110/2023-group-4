class Enemy extends PEObject{

  Boolean dead;
  float vx;
  Enemy(PImage img,float x,float y) {
    super(img,x-80,y,60,60,0,width,y,0,0);
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
    posX = Math.max(0, Math.min(posX + vx, rightEdge - wid)); 
    println("posX:"+posX + "Vx:"+vx);
    posY = Math.max(0, Math.min(posY + velocityY, lowEdge - hei));
    checkBoundaries();
  }

  @Override void display() {
    fill(255, 255, 0);
    //rect(posX, posY, wid, hei);
    image(img,posX, posY+10, wid, hei);
  }

  @Override void checkBoundaries() {
    ////check boundaries
    ////left
    if (posX <= leftEdge) {
      println("Chengae");
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
    velocityX = 0;
    lowEdge = height +200;
    dead = true;
  }
}
