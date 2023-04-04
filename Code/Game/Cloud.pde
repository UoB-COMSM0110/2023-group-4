class Cloud {
  float x;
  float y;
  float speed;
  PImage img;

  Cloud(float x, float y, float speed, String imagePath) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.img = loadImage(imagePath);
  }

  void display() {
    image(img, x, y);
  }

  void update() {
    x -= speed;
    if (x + img.width < 0) {
      x = width;
    }
  }
}
