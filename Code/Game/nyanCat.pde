 String gameState;
Button startButton;
Button helpButton;
Button chaOne;
Button chaTwo;
Button chaThree;
Button chaFour;
float belowBoundary = height - 110;
ArrayList<Button> buttonArray;
//ArrayList of Obstacle
ArrayList<Obstacle> obsList;
Player player;
boolean left,right,up,down,space;

float obstacleVelocityX;
//Timer
int timeGap = 2000;
float oldtime;
float nowtime;
float deltatime;
float timer; 
int score = 0;

Boolean paused;

Obstacle initialObs;

//Initial Pos
float initialX;
float initialY;
/*
Index of Button
0: Start Button
1: Help Button
2-5: Four characters
6: Lose Menu---Restart Button
7: Lose Menu---Quit Button
*/ 
void setup(){
  size(1000,366);
  PImage bg = loadImage("../design_and_interface/game_BG/1064*601bg.png");
  background(bg);
  
  //The key listener:⬅ ⬆ ➡ ⬇ space
  left = false;
  right = false;
  up = false;
  down = false;
  space = false;
  paused = false;
  obsList = new ArrayList<>();
  buttonArray = new ArrayList<>();
  obstacleVelocityX = 5.0;
  gameState = "START";
  initialX = width/2+100;
  initialY = height-158;
  player = new Player(false,null,initialX,initialY,100,100,"Images/ratOne/");
  PImage[] test = new PImage[4];
  for (int i = 0; i<4; i++){
    test[i]=loadImage("Images/ratOne/Idle/" + i + ".png");
  }
  
  PImage obstacle = loadImage("obstacles.png");
  /*initialObs = new Obstacle(800,460,200,200,"dead",obstacle,obstacleVelocityX);
  obsList.add(initialObs);*/
  buttonInit();
}
//Change the initial poision in this function
void buttonListener(){
  int index = -1;
  for(Button button:buttonArray){
    if(button.isClicked()){
      index = buttonArray.indexOf(button);
      println(index);
    }
  }
  //Start Menu
  if(index > -1){
    //Change the game state according to the index:0:startButton 1:helpButton 2-5:car 1-4
    if(index == 0){
      gameState = "PLAY";
      //Set the initial position of the player
      reset();
    }/*else if(index == 1){
      gameState = "HELP";
    }*/else if(index>=1 && index<=4){
      Button button = buttonArray.get(index);
      player = new Player(false,button.getCat(),width/2+100,button.getpos().y,button.getWidth(),button.getHeight(),button.getFilePath());
    }
  }
  //Play Menu
}
//If you want ot create new buttons, Put them into buttonArray
void buttonInit(){
  //Start Button
  startButton = new Button(width/2-50,height/3+30,100,50,"Start",0,200,0,null,null,null,0,0,0);
  buttonArray.add(startButton);
  //Help Button
  /*helpButton = new Button(width/2-50,height/3+90,100,50,"Help",0,200,0,null,null,null);
  buttonArray.add(helpButton);*/
  //Four characters*
  int frames = 4;
  PImage[] character = new PImage[4];
  for (int i = 0; i<4; i++){
    character[i]=loadImage("Images/ratOne/Idle/" + i + ".png");
  }
  chaOne = new Button(0,height-158,100,100,null,0,200,0,"Images/ratOne/",null,character,0,0,0);
  buttonArray.add(chaOne);
  for (int i = 0; i<frames; i++){
    character[i]=loadImage("Images/ratTwo/Idle/" + i + ".png");
  }
  chaTwo = new Button(100,height-158,100,100,null,0,200,0,"Images/ratTwo/",null,character,0,0,0);
  buttonArray.add(chaTwo);
  for (int i = 0; i<frames; i++){
    character[i]=loadImage("Images/catOne/Idle/" + i + ".png");
  }
  chaThree = new Button(200,height-158,100,100,null,0,200,0,"Images/catOne/",null,character,0,0,0);
  buttonArray.add(chaThree);
   for (int i = 0; i<frames; i++){
    character[i]=loadImage("Images/catTwo/Idle/" + i + ".png");
  }
  chaFour = new Button(300,height-158,100,100,null,0,200,0,"Images/catTwo/",null,character,0,0,0);
  buttonArray.add(chaFour);
  Button restartButton = new Button(width/2-130,height/3+20,260,50,"Play Again",149,75,12,null,null,null,225,225,225);
  buttonArray.add(restartButton);
  Button quitButton = new Button(width/2-130,height/3+80,260,50,"Quit",149,75,12,null,null,null,225,225,225);
  buttonArray.add(quitButton);
}
void draw(){
  clear();
  //println("GameState: "+ gameState);
  if(gameState == "START"){
    startGame();
  }else if(gameState == "PLAY"){
    playGame();
  }else if(gameState == "WIN"){
    winGame();
  }else if(gameState == "LOSE"){
    loseGame();
  }else if(gameState == "HELP"){
    helpMenu();
  }
}

void startGame(){
  PImage bg = loadImage("../design_and_interface/game_BG/1064*601bg.png");
  background(bg);
  textAlign(CENTER);
  textSize(25);
  fill(0,0,0);
  text("Cat adventure",width/2,height/3);
  for(int i =0;i<5;i++){
    buttonArray.get(i).update();
    buttonArray.get(i).renderButton();
  }
  player.display();
  buttonListener();
}

void playGame(){
  PImage bg = loadImage("../design_and_interface/game_BG/1064*601bg.png");
  background(bg);
  //Player Controller
  player.update();
  player.display();
  //////DOING SCORE
  if (player.getPosY() < 400) { 
  // Check if the jump was successful (i.e. player's y position increased)
   if (player.getPosY() > belowBoundary){
    score = score +20;
    println("jump good\n");
    // Jump was successful
  }
}
   //Generate a seed value based on the current system time, thread ID, and memory address
   long seed = System.currentTimeMillis() + Thread.currentThread().getId() + System.identityHashCode(this);
   // Set the seed value for the random number generator
   randomSeed(seed);
   // Generate a random number between 1300 and 2500 milliseconds
   timeGap = (int) random(1300, 2500);
   // Print the time gap
  if(timer >= timeGap){//Generate an Obastacle every 500ms: Change the timeGap to control generate speed
    PImage obstacle = loadImage("obstacles.png");
    Obstacle deadObs = new Obstacle(1000,236,73,80,"dead",obstacle,obstacleVelocityX);
    obsList.add(deadObs);
    timer = 0;
    timeGap = (int) random(1000, 3001);
  }
  //Obstacles Controller
  for(Obstacle obs:obsList){
    //println("posX"+obs.x+"posY"+obs.y);
    obs.update();
    obs.display();
  }
  displayPositionData();
  //Collission detection
  // Check if player jumps
  
  for(Obstacle obs:obsList){
   player.collisionSide = sideOfCollisions(player,obs);
   if(player.collisionSide!="none"){
     gameState = "LOSE";
   }
  }
  timer += getDeltaTime();
  //Update the status of buttons: Check if it is clicked
}
void winGame(){}
void loseGame(){
  //Stop the game
  loseGamePage();
  for(int i=5;i<=6;i++){
    buttonArray.get(i).update();
    buttonArray.get(i).renderButton();
  }
  if(buttonArray.get(5).isClicked()){
    gameState = "PLAY";
    reset();
    buttonArray.get(5).Clicked = false;
  }else if(buttonArray.get(6).isClicked()){
    gameState = "START";
    reset();
    buttonArray.get(6).Clicked = false;
  }
}
void loseGamePage(){
  PImage bg = loadImage("../design_and_interface/game_BG/1064*601bg.png");
  background(bg);
  //Menu BackGround
  int menuW = 400;
  int menuH = 230;
  String text = "GAME OVER";
  int x = (width-menuW)/2;
  int y = (height-menuH)/2-30;
  fill(149,75,12);
  noStroke();
  rect(x,y,menuW,menuH);
  textSize(60);
  textAlign(CENTER);
  fill(238,175,54);
  text(text,width/2,y+70);
}
void helpMenu(){}

void reset(){
  if(gameState == "START"){
    player.setposX(initialX);
    player.setposY(initialY);
  }else{//gameState  is "Play"
    player.setposX(0);
    player.setposY((float)height-100);
  }
    score = 0;
  obsList = new ArrayList<>();
  PImage obstacle = loadImage("obstacles.png");
  for(Button button:buttonArray){
    button.Clicked = false;
  }
}

void clear(){
  fill(255);
  rect(0,0,width,height);
}

void displayPositionData() {
  fill(0);
  String s = "\nvx: "+player.getVelocityX()+"  vy: "+player.getVelocityY() + 
    "\ncollisionSide: "+player.collisionSide+"\nposX:"+player.getPosX()+"  posY: "+player.getPosY();
  text(s, 150, 50);
  // Display score
  textSize(32);
  fill(0);
  text("Score: " + score, 600, 30);
}

String sideOfCollisions(Player player,Obstacle obstacle){
  ////r1 is the player
  ////r2 is the platform rectangle
  ////function returns the String collisionSide

  //allow unicorn to pass through platforms.
  //Disable if you want unicorn to bounce off bottom of platforms
  float posY = player.getPosY();
  float posX = player.getPosX();
  if (player.getVelocityY() < 0) { return "none"; }

  float dx = (player.getPosX()+player.getWidth()/2) - (obstacle.x+obstacle.w/2);
  float dy = (player.getPosY()+player.getHeight()/2) - (obstacle.y+obstacle.h/2);

  float combinedHalfWidths =player.halfWidth + obstacle.halfWidth;
  float combinedHalfHeights = player.halfHeight + obstacle.halfHeight;

  if (abs(dx) < combinedHalfWidths) {
    ////collision has happened on the x axis
    ////now check on the y axis
    if (abs(dy) < combinedHalfHeights) {
      ////collision detected
      //determine the overlap on each axis
      float overlapX = combinedHalfWidths - abs(dx);
      float overlapY = combinedHalfHeights - abs(dy);
      ////the collision is on the axis with the
      ////SMALLEST overlap
      if (overlapX >= overlapY) {
        if (dy > 0) {
          ////move the rectangle back to eliminate overlap
          ////before calling its display to prevent
          ////drawing object inside each other
          posY += overlapY;
          player.setposY(posY);
          return "top";
        } else {
          posY -= overlapY;
          player.setposY(posY);
          return "bottom";
        }
      } else {
        if (dx > 0) {
          posX += overlapX;
          player.setposX(posX);
          return "left";
        } else {
          posX -= overlapX;
          player.setposX(posX);
          return "right";
        }
      }
    } else {
      //collision failed on the y axis
      return "none";
    }
  } else {
    //collision failed on the x axis
    return "none";
  }
}
float getDeltaTime()
{
  nowtime = millis();
  deltatime = nowtime - oldtime;
  oldtime = nowtime;
  return deltatime;
} 
//Keyboard monitor
void keyPressed() {
  switch (keyCode) {
  /*case 37://left
    left = true;
    break;
  case 39://right
    right = true;
    break;*/
  case 38://up
    if(!paused){
    up = true;
    }
    break;
  case 40://down
    down = true;
    break;
  case 32: //space
    space = true;
    break;
  }

}
void keyReleased() {
  switch (keyCode) {
  /*case 37://left
    left = false;
    break;
  case 39://right
    right = false;
    break;*/
  case 38://up
    up = false;
    break;
  case 40://down
    down = false;
    break;
  case 32: //space
    space = false;
    break;
  }
}
