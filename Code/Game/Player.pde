class Player extends PEObject{
  Boolean winLose;
  boolean isOnGround;
  float jumpForce;   
  String collisionSide;
  boolean touched;
  
  //image variables
  int walkFrame;
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
    super(img,posX,posY,wid,hei,0,width,height-58,0,0);
    //Accelaration
    this.isOnGround = false;
    touched =false;
    //The (0,0) for the screen  is left above corner, The jumpforce is negative
    //Gravity controlls the jump force  velocity = jumpForce + gravity
    //To decrease the jump distance. Either decrease the jumpforce or increase the gravity
    this.jumpForce = -9;
    //Colisssion detection
    collisionSide = "none";
    //Animation
    //Walk sequence
    walkFrame = 0;
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
    img = image;
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
        image(moveImages[walkFrame+0], posX,posY,wid,hei);
    }else{
        image(idleImages[idleFrame+0], posX,posY,wid,hei);
    }
    //If the frames is 60, 1000/60 = 16 ms. Each frame would run for 16 ms
    
     if(millis() % timeGap <= (2000/frameRate)){
      idleFrame = (idleFrame + 1)%idleSequence;
      if (!isOnGround) {
        walkFrame = (walkFrame + 1)%frameSequence;
      } 
    }
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
  
  public void setSize(float w,float h) {
    wid = w;
    hei = h;
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
        moveImages[i]=loadImage(filePath+"walk/"+ i + ".tiff"); //change from here
      }
      //Idle animation
      for (int i = 0; i<4; i++){
        idleImages[i]=loadImage(filePath+"Idle/"+ i + ".tiff");
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
    if (posX + wid > rightEdge){
      posX = width - wid;
    }
    ////top
    if (posY < 0){
      posY = 0;
    }
    //Below
    if (posY + hei > lowEdge){
      isOnGround = true;
      velocityY = 0;
      posY = lowEdge- hei;
    }
  }

  void checkPlatforms(){
    ////update for platform collisions
    if (collisionSide == "bottom" && velocityY >= 0) {
      isOnGround = true;
      velocityY = 0;
      touched = true;
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
