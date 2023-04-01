class Obstacle{
  float w,h,x,y; //Width Hieght posX posY
  float halfWidth, halfHeight;
  float velocityX;
  PImage img;

  Obstacle(float _x, float _y, float _w, float _h,PImage img,float velocityX){
    w = _w;
    h = _h;
    x = _x;
    y = _y;
    this.img = img;

    halfWidth = w/2;
    halfHeight = h/2;
    
    this.velocityX = velocityX;
  }
  void display(){
    if(img !=null){
      image(img,x,y,w,h);
    }else{
      fill(0,0,255);
      rect(x,y,w,h);  
    }
  }

  void update(){
    x -= velocityX;
  }

  void init(){
    x = 500;
    y = 460;
  }
}
