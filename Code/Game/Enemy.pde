class Enemy{

  float w, h, x, y, vx, vy, 
    accelerationX, accelerationY, 
    speedLimit;

  float leftEdge, rightEdge, ground;

  //world variables
  float gravity;
 
  //boolean isOnGround;
  //float jumpForce;

  float halfWidth, halfHeight;
  //String collisionSide;

  //image variables
  int currentFrame;
  int frameSequence;
  int frameOffset;

  color c;

  Boolean dead;

  Enemy(float x,float y) {
    w = 80;
    h = 80;
    this.x = x-w;
    this.y = y-h;
    vx = (random(10)<5)? -5 : 5;

    halfWidth = w/2;
    halfHeight = h/2;
    
    ground = y;

    leftEdge = 0;
    rightEdge = width/2;
    //if condition is true do the first thing otherwise do the second
    //ternary operator
    vy = 0;
    gravity = .3;
    //collisionSide = "";
    currentFrame = 0;
    frameSequence = 6;//number of frames in each animation sequence
    frameOffset = 0;

    c = color(255);
    dead = false;
  }
  void setX(float x){
    this.x = x-w;
  }
  void update() {
    vy += gravity;
    float abc = height -h;
    if (abs(vy) < 0.2) {
      vy = 0;
    }
    x = Math.max(0, Math.min(x + vx, rightEdge - w)); 
    y = Math.max(0, Math.min(y + vy, ground - h));
    checkBoundaries();
  }

  void display() {
    fill(255, 255, 0);
    rect(x, y, w, h);
  }

  void checkBoundaries() {
    ////check boundaries
    ////left
    if (x <= leftEdge) {
      vx *= -1;
      //accelerationX *= -1;
      x = leftEdge;
    }
    //// right
    if (x >= rightEdge - w) {
      vx *= -1;
      //accelerationX *= -1;
      x = rightEdge - w;
    }
  }

  void deadJump(){
    //Value vy controls the jump height of copy Cat
    vy = -9;
    vx = 0;
    ground = height +200;
    dead = true;
  }
}
