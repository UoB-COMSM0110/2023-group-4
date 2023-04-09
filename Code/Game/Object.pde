abstract class Object{
Boolean winLose;
  PImage img;
  float x,y,w,h;
  //Move Function
  float velocityX, velocityY;
  float halfWidth,halfHeight;
  
  Object(float _x, float _y, float _w, float _h,PImage img,float velocityX,float velocityY){
    w = _w;
    h = _h;
    x = _x;
    y = _y;
    this.img = img;
    this.velocityX  = velocityX;
    this.velocityY = velocityY;
    halfWidth = w/2;
    halfHeight = h/2;
  }
  
  abstract void update();
  abstract void display();
  abstract void init();
}
