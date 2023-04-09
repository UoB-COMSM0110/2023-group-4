abstract class PEObject{
  PImage img;
  float posX,posY;
  float wid;
  float hei;
  //Move Function
  float velocityX, velocityY,accX,accY,speedLimit;
  float friction,gravity;
  float leftEdge, rightEdge, lowEdge;

  float halfWidth,halfHeight;

  PEObject(PImage img,float posX,float posY,float wid,float hei,float leftEdge,float rightEdge,float lowEdge,float veloctiyX,float velocityY){
    this.img = img;
    //Position
    this.velocityX = velocityX;
    this.velocityY = velocityY;
    this.speedLimit = 5;
    this.posX = posX;
    this.posY = posY;      
    this.wid = wid;
    this.hei = hei;
    //Accelaration
    this.accX = 0;
    this.accY = 0;
    this.speedLimit = 5;
    this.leftEdge = leftEdge;
    this.rightEdge = rightEdge;
    this.lowEdge = lowEdge;

    //world values
    friction = 0.96;
    gravity = .4;

    halfWidth = wid/2;
    halfHeight = hei/2;
  }

  abstract void update();
  abstract void display();
  abstract void checkBoundaries();
}
