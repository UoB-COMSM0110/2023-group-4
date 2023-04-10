String gameState;
Button startButton;
Button helpButton;
Button chaOne;
Button chaTwo;
Button chaThree;
Button chaFour;
Button confirmButton;
Button beginButton;

Button normal;
Button hard;
float belowBoundary = height - 110;
ArrayList<Button> buttonArray;
//ArrayList of Obstacle
ArrayList<Obstacle> obsList;
ArrayList<Cloud> clouds;

Player player;
boolean left,right,up,down;
Enemy copyCat;

String difficulty;

float obstacleVelocityX;
long lastScoreUpdateTime = 0;

//boss
float bossXOffset = 700;
float bossXDirection = 1;
float bossXSpeed = 5;
//
//Timer
int timeGap = 2000;
float oldtime;
float nowtime;
float deltatime;
float timer; 
int score = 0;
int quitTime = 0;
int pauseStart = 0;
int pauseDuration = 3000;
///
PImage sc, fB;

///
Boolean paused;
Boolean appear;
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
  //PImage bg = loadImage("../design_and_interface/game_BG/1064*601bg.png");
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);

  sc = loadImage("../design_and_interface/game_BG/score.png");
  fB = loadImage("../design_and_interface/game_BG/boss.png");


  //The key listener:⬅ ⬆ ➡ ⬇
  left = false;
  right = false;
  up = false;
  down = false;
  paused = false;
  appear = false;
  obsList = new ArrayList<>();
  buttonArray = new ArrayList<>();
  obstacleVelocityX = 10.0;
  gameState = "START";
  initialX = width/2 + 255;
  initialY = height/2 + 20 - 100;

  int newWidth = 100;
  int newHeight = 62;
  
  player = new Player(false, null, initialX, initialY, newWidth, newHeight, "Images/ratOne/");
  copyCat = new Enemy(fB,width,player.lowEdge);
  PImage[] test = new PImage[4];
  for (int i = 0; i<4; i++){
    test[i]=loadImage("Images/ratOne/Idle/" + i + ".tiff"); //from png to tiff
    test[i].resize(newWidth, newHeight);
  }
  
  buttonInit();
  
  clouds = new ArrayList<>();
  initClouds();
   // Load obstacle images
   PImage[] obstacleImages = new PImage[8];

  for (int i = 0; i < 8; i++) {
    obstacleImages[i] = loadImage("../design_and_interface/game_BG/obstacle/obstacle" + str(i + 1) + ".png");
  }
}

  void initClouds() {
  PImage cloud1Img = loadImage("../design_and_interface/game_BG/cloud/cloud_3.png");
  PImage cloud2Img = loadImage("../design_and_interface/game_BG/cloud/cloud_3.png");
  PImage cloud3Img = loadImage("../design_and_interface/game_BG/cloud/cloud_3.png");

 // Resize cloud1 image to half its size
  cloud1Img.resize(cloud1Img.width / 2, cloud1Img.height / 2);
  cloud2Img.resize(cloud2Img.width / 2, cloud2Img.height / 2);
  cloud3Img.resize(cloud3Img.width / 2, cloud3Img.height / 2);

  Cloud cloud1 = new Cloud(100, 50, cloud1Img, 1);
  Cloud cloud2 = new Cloud(350, 80, cloud2Img, 1);
  Cloud cloud3 = new Cloud(600, 30, cloud3Img, 1);
  Cloud cloud4 = new Cloud(900, 70, cloud3Img, 1);


  clouds.add(cloud1);
  clouds.add(cloud2);
  clouds.add(cloud3);
  clouds.add(cloud4);
}



//Change the initial poision in this function
void buttonListener(){
  int index = -1;
  for(Button button:buttonArray){
    if(button.isClicked()){
      index = buttonArray.indexOf(button);
    }
  }
  //Start Menu
  if(index > -1){
    //Change the game state according to the index:0:startButton 1:helpButton 2-5:car 1-4
    if(index == 0){
      gameState = "Character";
      //Set the initial position of the player
      reset();
    }else if(index>=1 && index<=4){
      Button button = buttonArray.get(index);
      player = new Player(false,button.getCat(),width/2 + 255,height/2 + 20 - 100,button.getWidth() * 1.6, button.getHeight() * 1.6,button.getFilePath());
    } else if(index == 9) {
      gameState = "Choose";
      reset();
    }
  }
  //Play Menu
}
//If you want ot create new buttons, Put them into buttonArray
void buttonInit(){

  //Start Button
  startButton = new Button(width/2-50,height/2,90,40,"Start",149,75,12,null,null,null,255,255,255);
  buttonArray.add(startButton);
  //Help Button
  /*helpButton = new Button(width/2-50,height/3+90,100,50,"Help",0,200,0,null,null,null);
  buttonArray.add(helpButton);*/
  //Four characters*
  int frames = 4;
  PImage[] character = new PImage[4];
  for (int i = 0; i<4; i++){
    character[i]=loadImage("Images/ratOne/Idle/" + i + ".tiff"); //change from png 
  }
  chaOne = new Button(100,height-118,90,62,null,0,200,0,"Images/ratOne/",null,character,0,0,0);
  buttonArray.add(chaOne);
  for (int i = 0; i<frames; i++){
    character[i]=loadImage("Images/ratTwo/Idle/" + i + ".tiff");
  }
  chaTwo = new Button(0,height-118,90,62,null,0,200,0,"Images/ratTwo/",null,character,0,0,0);
  buttonArray.add(chaTwo);
  for (int i = 0; i<frames; i++){
    character[i]=loadImage("Images/catOne/Idle/" + i + ".tiff");
  }
  chaThree = new Button(200,height-118,90,62,null,0,200,0,"Images/catOne/",null,character,0,0,0);
  buttonArray.add(chaThree);
   for (int i = 0; i<frames; i++){
    character[i]=loadImage("Images/catTwo/Idle/" + i + ".tiff");
  }
  chaFour = new Button(300,height-118,90,62,null,0,200,0,"Images/catTwo/",null,character,0,0,0);
  buttonArray.add(chaFour);
  
  
  //Restar quit button
  Button restartButton = new Button(width/2-130,height/3+40,260,30,"Play Again",149,75,12,null,null,null,225,225,225);
  buttonArray.add(restartButton);
  Button quitButton = new Button(width/2-130,height/3+100,260,30,"Quit",149,75,12,null,null,null,225,225,225);
  buttonArray.add(quitButton);

  normal = new Button(width/3+35,height/3+40,100,40,"Normal",149,75,12,null,null,null,255,255,255);
  buttonArray.add(normal);
  hard = new Button(width/2+31,height/3+40,100,40,"Hard",149,75,12,null,null,null,255,255,255);
  buttonArray.add(hard);
  
  confirmButton = new Button(width/2+240,height/2+20,180,40,"Get Ready →",149,75,12,null,null,null,255,255,255);
  buttonArray.add(confirmButton);
  
  beginButton = new Button(width/2-80,height/2+30,180,40,"Let's Go",149,75,12,null,null,null,255,255,255);
  buttonArray.add(beginButton);
}
void draw(){
  clear();
  //println("GameState: "+ gameState);
  if(gameState == "START"){
    startGame();
  }else if (gameState == "Character") {
    chooseCharacter();
  }else if (gameState == "Choose"){
    difficultyChose();
  }else if(gameState == "PLAY"){
    playGame();
  }else if(gameState == "WIN"){
    winGame();
  }else if(gameState == "LOSE"){
    loseGame();
  }else if(gameState == "HELP"){
    helpMenu();
  }else if(gameState == "INSTRUCTION"){
    showInstruction();
  } else if (gameState == "Fake Quit") {
    showFakeQuit();
  }else if (gameState == "BOSS") {
      finalBoss();
  }
}

void startGame(){
  //PImage bg = loadImage("../design_and_interface/game_BG/1064*601bg.png");
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);


  textAlign(CENTER);
  fill(238,175,54);
  PFont font = createFont("PressStart2P-Regular.ttf", 60);
  textFont(font);
  text("Cat adventure",width/2 + 1.5,height/3 + 1.5);
  fill(149,75,12);
  text("Cat adventure",width/2,height/3);  
  fill(238,175,54);
  rect(width/2-48,height/2+2, 90,40,4);
  buttonArray.get(0).update();
  buttonArray.get(0).renderButton();
  buttonListener();
}

void chooseCharacter(){
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);
  fill(255, 255, 255);
  textSize(18);
  text("Click to choose\nyour character", width / 5 ,height/3);
  textSize(40);
  text("↓", width / 5 ,height/2);
  for(int i = 1; i < 5; i++){
    buttonArray.get(i).update();
    buttonArray.get(i).renderButton();
  }
  fill(238,175,54);
  rect(width/2+242,height/2+22, 180,40,4);
  buttonArray.get(9).update();
  buttonArray.get(9).renderButton();
  player.display();
  buttonListener();
}

void difficultyChose(){
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);
  textAlign(CENTER);
  textSize(25);
  fill(255,255,255);
  text("Difficulty",width/2,height/4+30);
  for(int i=7;i<=8;i++){
    fill(238,175,54);
    if (i==7){
      rect(width/3+37,height/3+42, 100,40,4);
    } else {
      rect(width/2+33,height/3+42, 100,40,4);
    }
    buttonArray.get(i).update();
    buttonArray.get(i).renderButton();
  }
  if(normal.isClicked()){
    difficulty = "NORMAL";
    gameState = "INSTRUCTION";
  }else if(hard.isClicked()){
    difficulty = "HARD";
    //Change the speed of the obstacle 
    obstacleVelocityX = obstacleVelocityX * 1.6;
    //Or you can change the frequency of the obstacles
    //timeGap = timeGap * 0.8; or what eles you want
    gameState = "INSTRUCTION";
  }
}

void showInstruction() {
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);
  textAlign(CENTER);
  textSize(25);
  fill(255, 255, 255);

  float totalWidth = 80 + 40 + 36 + 40 + 90; // Width of text "Use", up-arrow, "&", right-arrow, and "to"
  float startX = (width - totalWidth) / 2;

  text("Use", startX + 30, height / 3 + 15);
  PImage keyUp = loadImage("../Game/up-arrow.png");
  image(keyUp, startX + 80, height / 3 - 20, 40, 40);
  
  text("&", startX + 80 + 60, height / 3 + 15);
  
  PImage keyRight = loadImage("../Game/right-arrow.png");
  image(keyRight, startX + 80 + 40 + 36, height / 3 - 20, 40, 40);
  
  text("to", startX + 80 + 40 + 36 + 40 + 35, height / 3 + 15);

  text("Jump over obstacles", width / 2, height / 2);
  fill(238, 175, 54);
  rect(width / 2 - 78, height / 2 + 32, 180, 40, 4);

  buttonArray.get(10).update();
  buttonArray.get(10).renderButton();

  if (beginButton.isClicked()) {
    gameState = "PLAY";
  }
}



void showFakeQuit() {
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);
  textAlign(CENTER);
  textSize(25);
  fill(255,255,255);
  text("Be a fighter, not a quitter!",width/2+100,height/2);
  
  PImage cat = loadImage("../Game/Cat4.png");

  image(cat, width/7-150, height/4-20, 441, 450);


  
  if (pauseStart == 0) {
    pauseStart = millis(); 
  } else if (pauseStart > 0 && millis() - pauseStart >= pauseDuration) {
    pauseStart = 0;
    gameState = "PLAY";
  } else {
    textSize(25);
    fill(255,255,255);
    int timeLeft = (pauseDuration - millis() + pauseStart + 1000)/1000;
    text("Get ready in " + Integer.toString(timeLeft) + " seconds",width/2+100,height/2 + 50);
  }
}
void generateObstacles() {
  if (millis() - oldtime > timeGap) {
    oldtime = millis();
    int randomObstacle = int(random(8));
    PImage obsImage = loadImage("../design_and_interface/game_BG/obstacle/obstacle" + str(randomObstacle + 1) + ".png");

    // Resize the obstacle while maintaining its aspect ratio
    float originalWidth = 1890;
    float originalHeight = 1417;
    float newWidth = 100; //size of obstalce
    float newHeight = (newWidth * originalHeight) / originalWidth;

    float obstacleY = height - newHeight - 58; // Set the desired height position for the obstacle
    Obstacle obs = new Obstacle(width, obstacleY, newWidth, newHeight, obsImage, obstacleVelocityX);
    obsList.add(obs);

    // Update timeGap with a new random value
    timeGap = (int) random(800, 2000);
  }
}
void finalBoss() {
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);
  textAlign(CENTER);
  textSize(25);
  fill(255, 255, 255);
  int bossWidth = fB.width / 14;
  int bossHeight = fB.height / 14;
  displayPositionData();

  // Update the boss's X position based on the bossXDirection and bossXSpeed
  bossXOffset += bossXDirection * bossXSpeed;
  // Reverse the bossXDirection when the boss reaches the left or right limits
  if (bossXOffset >= width - bossWidth - 20) {
    bossXDirection = -1;
  } else if (bossXOffset <= 20) {
    bossXDirection = 1;
  }
  float bossX = bossXOffset;
  float bossY = height - bossHeight - 40;
  image(fB, bossX, bossY, bossWidth, bossHeight);
  /////logic 
  // cloud movement 
  float averageObstacleVelocity = 0;
  if (obsList.size() > 0) {
    averageObstacleVelocity = obsList.get(0).velocityX;
  }
  // Clouds Controller
  for (Cloud cloud : clouds) {
    cloud.velocity = -averageObstacleVelocity;
    cloud.update();
    cloud.display();
  }
  //Player Controller
  player.update();
  player.setSize(80, 50); //100,62
  player.display();
  //Boss function
 /* if(appear){
    copyCat.update();
    copyCat.display();
    player.collisionSide = collisionsPVE(player,copyCat);
    //CopyCat collision detection
    if(player.collisionSide!="none"&&copyCat.dead == false){
      if(player.collisionSide == "top"||player.collisionSide == "bottom"){
        //Remove the coptCat
        copyCat.deadJump();
      }else{
        gameState = "LOSE";
      }
    }
  }*/
  if (player.posX + player.wid >= bossX + bossWidth - player.wid/2 && player.posX + player.wid <= bossX + bossWidth + player.wid/2 && player.posY > 180) {
  gameState = "LOSE";
} else if (player.posX + player.wid >= bossX + bossWidth - player.wid/2 && player.posX + player.wid <= bossX + bossWidth + player.wid/2 && player.posY > 125 && player.posY < 140 ){
      score = score + 10;
  gameState = "PLAY";
}
  timer += getDeltaTime();
}
void playGame() {
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);

  // cloud movement
  float averageObstacleVelocity = 0;
  if (obsList.size() > 0) {
    averageObstacleVelocity = obsList.get(0).velocityX;
  }

  // Clouds Controller
  for (Cloud cloud : clouds) {
    cloud.velocity = -averageObstacleVelocity;
    cloud.update(); // Use the negative of the average obstacle velocity to move clouds
    cloud.display();
  }

  //Player Controller
  player.update();
  player.setSize(80,50); //100,62
  player.display();
  //Enemy controller
  //You want to make the copyCat appear just change the paramater appear
  //Score over time
 if (millis() - lastScoreUpdateTime >= 1000) { // Update score every 1000 milliseconds (1 second)
  score += 10; // Increment score by 1
  lastScoreUpdateTime = millis(); // Update the time the score was last updated
}
  //Obstacles Controller
  for(Obstacle obs:obsList){
    obs.update();
    obs.display();
  }
  displayPositionData();
  //Collission detection
  for(Obstacle obs:obsList){
    if(collisionDetection(player,obs)){
      gameState = "LOSE";
    }
  }
  //Change to boss level
  if (score >= 50 && score % 50 == 0) {
      bossXOffset = 850;
      gameState = "BOSS";
  }
  generateObstacles(); // Call the new generateObstacles() method here
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
    if (quitTime < 3) {
      gameState = "Fake Quit";
      quitTime++;
    } else {
      gameState = "START";
      quitTime = 0;
    }
    reset();
    buttonArray.get(6).Clicked = false;
  }
}
void loseGamePage(){
  //PImage bg = loadImage("../design_and_interface/game_BG/1064*601bg.png");
  PImage bg = loadImage("../design_and_interface/game_BG/1064_601bg.png");
  background(bg);
  //Menu BackGround
  int menuW = 500;
  int menuH = 230;
  String text = "GAME OVER";
  int x = (width-menuW)/2;
  int y = (height-menuH)/2-30;
  fill(149,75,12);
  noStroke();
  rect(x,y,menuW,menuH);
  textSize(50);
  textAlign(CENTER);
  fill(238,175,54);
  text(text,width/2,y+70);
}
void helpMenu(){}

void reset(){
  if(gameState == "START" || gameState == "Character"){
    player.setposX(initialX);
    player.setposY(initialY);
    player.setSize(160,160);
    obstacleVelocityX = 10.0;
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
  copyCat.setX(width);
}

void clear(){
  fill(255);
  rect(0,0,width,height);
}

void displayPositionData() {
  fill(0);
  String s = "\nvx: "+player.velocityX+"  vy: "+player.velocityY + 
    "\ncollisionSide: "+player.collisionSide+"\nposX:"+player.posX+"  posY: "+player.posY;
  text(s, 150, 50);
  // Display score
  
  //display the score on the top right 
  image(sc, width - 220, 15, width/13, height/10); // x was 520
    //Display Score Number
  fill(0);
  textSize(24);
  text(score, width - 90, 35);

}
boolean collisionDetection(Player player, Obstacle obs) {
    ////r1 is the player
  ////r2 is the enemy

  float dx = (player.posX+player.wid/2) - (obs.x+obs.w/2);
  float dy = (player.posY+player.hei/2) - (obs.y+obs.h/2);

  float combinedHalfWidths = player.halfWidth + obs.halfWidth-50;
  float combinedHalfHeights = player.halfHeight + obs.halfHeight-50;

  if (abs(dx) < combinedHalfWidths) {
    ////collision has happened on the x axis
    ////now check on the y axis
    if (abs(dy) < combinedHalfHeights) {
      ////collision detected
      return true;
    }
  }
  return false;
}
String collisionsPVE(Player player,Enemy copyCat){
  ////r1 is the player
  ////r2 is the platform rectangle
  ////function returns the String collisionSide

  //allow unicorn to pass through platforms.
  //Disable if you want unicorn to bounce off bottom of platforms
  if (player.velocityY < 0) { return "none"; }

  float dx = (player.posX+player.wid/2) - (copyCat.posX+copyCat.wid/2);
  float dy = (player.posY+player.hei/2) - (copyCat.posY+copyCat.hei/2);

  float combinedHalfWidths =player.halfWidth + copyCat.halfWidth-30;
  float combinedHalfHeights = player.halfHeight + copyCat.halfHeight-30;

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
          /*posY += overlapY;
          player.setposY(posY);*/
          return "top";
        } else {
          /*posY -= overlapY;
          player.setposY(posY);*/
          return "bottom";
        }
      } else {
        if (dx > 0) {
         /* posX += overlapX;
          player.setposX(posX);*/
          return "left";
        } else {
         /* posX -= overlapX;
          player.setposX(posX);*/
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
  case 37://left
    left = true;
    break;
  case 39://right
    right = true;
    break;
  case 38://up
    if(!paused){
    up = true;
    }
    break;
  case 40://down
    down = true;
    break;
  }

}
void keyReleased() {
  switch (keyCode) {
  case 37://left
    left = false;
    break;
  case 39://right
    right = false;
    break;
  case 38://up
    up = false;
    break;
  case 40://down
    down = false;
    break;
  }
}
