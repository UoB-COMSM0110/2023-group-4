

class Obstacle extends Object{



  Obstacle(float _x, float _y, float _w, float _h,PImage img,float velocityX){
    super(_x,_y,_w,_h,img,velocityX,0);
    this.velocityX = velocityX;
  }
  @Override void display(){
    if(img !=null){
      image(img,x,y,w,h);
    }else{
      fill(0,0,255);
      rect(x,y,w,h);  
    }
  }

  @Override void update(){
    x -= velocityX;
  }

  @Override void init(){
    x = 500;
    y = 460;
  }

}
