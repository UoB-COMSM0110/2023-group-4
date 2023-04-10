
class Cloud extends Object {
  float velocity;
  Cloud(float x, float y, PImage img, float speed) {
    super(x,y,0,0,img,speed,0);
  }

 @Override void display() {
    image(img, x, y);
  }
 
 @Override void update() {
    x += velocityX * velocity;

    if (x + img.width < 0) {
      x = width;
    }
  }
  @Override void init(){}
  void move() {
    x -= velocityX;
    if (x < -img.width) {
      x = width;
    }
  }
}
