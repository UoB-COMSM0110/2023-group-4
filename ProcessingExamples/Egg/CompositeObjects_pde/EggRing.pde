class EggRing {
  Egg ovoid;
  Ring circle = new Ring();
  EggHat hat = new EggHat();

  EggRing(float x, float y, float t, float sp) {
    ovoid = new Egg(x, y, t, sp);
    circle.start(x, y - sp/2);
    hat.start(x, y+40);
  }
  



  void transmit() {
    ovoid.wobble();
    ovoid.display();
    circle.grow();
    circle.display();
    if (circle.on == false) {
      circle.on = true;
    }
    hat.display();
  }
}
