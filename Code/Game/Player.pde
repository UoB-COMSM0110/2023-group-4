class Player{
  Boolean winLose;
  PImage cat;
  float posX,posY;
  float Width;
  float Height;
  //Move Function
  float velocityX, velocityY,accX,accY,speedLimit;
  float friction,bounce,gravity;
  boolean isOnGround;
  float jumpForce;   
  float halfWidth,halfHeight;
  String collisionSide;
  boolean touched;

  float lowBoundary;
  
  //image variables
  int walkFrame;
  boolean facingRight;
  int frameSequence;
  int frameOffset;
  //Idle sequence
  int idleFrame;
  int idleSequence;
  //Frame array
  PImage[] idleImages;
  PImage[] moveImages;

  //File Path: Save the animation
  String filePath;
  int frames;
  //Time(ms)
  int timeGap = 500;
  Player(Boolean winLose, PImage img, float posX,float posY,float wid,float hei,String filePath){
    this.winLose = winLose;
    this.cat = img;
    //Position
    this.posX = posX;
    this.posY = posY;
    this.lowBoundary = height-58;
    //Size
    this.Width = wid;
    this.Height = hei;
    //Veloctiy
    this.velocityX = 0;
    this.velocityY = 0;
    //Accelaration
    this.accX = 0;
    this.accY = 0;
    this.speedLimit = 5;
    this.isOnGround = false;
    touched =false;
    //The (0,0) for the screen  is left above corner, The jumpforce is negative
    //Gravity controlls the jump force  velocity = jumpForce + gravity
    //To decrease the jump distance. Either decrease the jumpforce or increase the gravity
    this.jumpForce = -11;
    //world values
    friction = 0.96;
    bounce = -0.7;
    gravity = .3;
    
    halfWidth = wid/2;
    halfHeight = hei/2;
    //Colisssion detection
    collisionSide = "";
    //Animation
    //Walk sequence
    walkFrame = 0;
    facingRight = true;
    frameSequence = 6;//number of frames in each animation sequence
    //Idle sequence
    idleFrame = 0;
    idleSequence = 4;
    frameOffset = 0;
    //Animation file path
    this.filePath = filePath;
    frames = 0;
    loadFiles();
  }
  void update(){
    //Just call this function in the scenario you want.Hint: in the draw function
    //If you dont want the horizotanl movement Just remove the code posX += velocityX below
    //Go Left
    if(left && !right &&collisionSide!="left" ){
      accX = -0.2;
      friction = 1;
    }
    //Go Right
    if(!left && right && collisionSide!="right"){
      accX = 0.2;
      friction = 1;
    }
    //Constant
    if(!left && !right){
      accX = 0;
    }
    //Go up
    if(up && !down&&isOnGround){
      velocityY = jumpForce;
      isOnGround = false;
      friction = 1;
    }
    //removing impulse reintroduces friction
    if (!up && !down && !left && !right){
     friction = 0.96; 
    }
    velocityX += accX;
    velocityY += gravity;
    //friction 1 = no friction
    velocityX *= friction;
    //Change the position
    if(velocityX >speedLimit){
      velocityX = speedLimit;
    }
    if(velocityX <-speedLimit){
      velocityX = -speedLimit;
    }
    if(velocityY >3*speedLimit){
      velocityY = 3*speedLimit;
    }
    if (abs(velocityX) < 0.2) {
      velocityX = 0;
    }
    posX += velocityX;
    posY += velocityY;
    checkBoundaries();
    checkPlatforms();
    
  }
  void setcat(PImage image){
    cat = image;
  }
  void setwinLose(){
    if(winLose==false){
      winLose = true;
    }else{
      winLose = false;
    }
  }
  void display(){
    if (abs(velocityY) > 0) {
        image(moveImages[walkFrame+0], posX,posY,Width,Height);
    }else{
        image(idleImages[idleFrame+0], posX,posY,Width,Height);
    }
    //If the frames is 60, 1000/60 = 16 ms. Each frame would run for 16 ms
    
     if(millis() % timeGap <= (2000/frameRate)){
      idleFrame = (idleFrame + 1)%idleSequence;
      if (!isOnGround) {
        walkFrame = (walkFrame + 1)%frameSequence;
      } 
    }
  }
  //Getters
  public float getVelocityX(){
    return this.velocityX;
  }
   public float getVelocityY(){
    return this.velocityY;
  }
  public float getBounce(){
    return this.bounce;
  }
  public float getPosX(){
    return this.posX;
  }
  public float getPosY(){
    return this.posY;
  }
  public float getWidth(){
    return this.Width;
  }
  public float getHeight(){
    return this.Height;
  }
  public float getLowBoundary(){
    return lowBoundary;
  }
  public void setJumpForce(float force){
    this.jumpForce = force;
  }
  public void setGravity(float force){
    this.gravity = force;
  }
  public void setposX(float position){
    this.posX = position;
  }
  public void setposY(float position){
    this.posY = position;
  }
  public void setCollisionSide(String side){
    collisionSide = side;
  }
  
  
  void loadFiles(){
    if(filePath!=null){
      //Move animation
      if(filePath.contains("rat")){
        frames = 4;
        frameSequence = 4;
      }else{
        frames = 6;
        frameSequence = 6;
      }
      moveImages = new PImage[frames];
      idleImages = new PImage[4];
      for (int i = 0; i<frames; i++){
        moveImages[i]=loadImage(filePath+"walk/"+ i + ".png");
      }
      //Idle animation
      for (int i = 0; i<4; i++){
        idleImages[i]=loadImage(filePath+"Idle/"+ i + ".png");
      }
    }
  }
  
  void checkBoundaries(){
    //Check boundaries
    //Left
    if(player.posX<0){
      posX = 0;
    }
    //// right
    if (posX + Width > width){
      posX = width - Width;
    }
    ////top
    if (posY < 0){
      posY = 0;
    }
    //Below
    if (posY + Height > lowBoundary){
      isOnGround = true;
      velocityY = 0;
      posY = lowBoundary- Height;
    }
  }

  void checkPlatforms(){
    ////update for platform collisions
    if (collisionSide == "bottom" && velocityY >= 0) {
      isOnGround = true;
      velocityY = 0;
      touched = true;
      println("top");
    } else if (collisionSide == "top" && velocityY <= 0) {
      velocityY = 0;
      touched = true;
    } else if (collisionSide == "right" && velocityX >= 0) {
      velocityX = 0;
      touched = true;
    } else if (collisionSide == "left" && velocityX <= 0) {
      velocityX = 0;
      touched = true;
    }else {
      touched = false;
    }
    if (collisionSide != "bottom" && velocityY > 0) {
      isOnGround = false;
    }
  }

}
