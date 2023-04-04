class Cloud {
  float x;
  float y;
  PImage img;
  float speed;

  Cloud(float x, float y, PImage img, float speed) {
    this.x = x;
    this.y = y;
    this.img = img;
    this.speed = speed;
  }

  void display() {
    image(img, x, y);
  }
 
  void update(float velocity) {
    x += speed * velocity;
    if (x + img.width < 0) {
      x = width;
    }
  }
  
  void move() {
    x -= speed;
    if (x < -img.width) {
      x = width;
    }
  }
}
