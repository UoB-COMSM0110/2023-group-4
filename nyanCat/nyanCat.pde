String gameState;
Button startButton;
Button helpButton;
Button catOne;
Button catTwo;
Button catThree;
Button catFour;
Button[] buttonArray = new Button[6];
Player player;
void setup(){
  fill(255);
  size(800,600);
  gameState = "START";
  PImage cat1 = loadImage("Cat1.png");
  player = new Player(false,cat1,width/2+100,height-150,100,100);
  buttonInit();
}
void buttonInit(){
  startButton = new Button(width/2-50,height/3+30,100,50,"Start",0,200,0,null);
  buttonArray[0] = startButton;
  helpButton = new Button(width/2-50,height/3+90,100,50,"Help",0,200,0,null);
  buttonArray[1] =helpButton;
  PImage cat1 = loadImage("Cat1.png");
  PImage cat2 = loadImage("Cat2.png");
  PImage cat3 = loadImage("Cat3.png");
  PImage cat4 = loadImage("Cat4.png");
  catOne = new Button(0,height-150,100,100,"Start",0,200,0,cat1);
  buttonArray[2] =catOne;
  catTwo = new Button(100,height-150,100,100,"Start",0,200,0,cat2);
  buttonArray[3] =catTwo;
  catThree = new Button(200,height-150,100,100,"Start",0,200,0,cat3);
  buttonArray[4]= catThree;
  catFour = new Button(300,height-150,100,100,"Start",0,200,0,cat4);
  buttonArray[5]= catFour;
}
void draw(){
  clear();
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
  textAlign(CENTER);
  textSize(25);
  fill(0,0,0);
  text("Cat adventure",width/2,height/3);
  for(Button button:buttonArray){
    button.update();
    button.renderButton();
  }
  player.renderPlayer();
  buttonListener();
}
void buttonListener(){
  int index = -1;
  for(int i =0;i<buttonArray.length;i++){
    if(buttonArray[i].isClicked()){
      index = i;
    }
  }
  if(index > -1){
    if(index == 0){
      gameState = "PLAY";
    }else if(index == 1){
      gameState = "PLAY";
    }else{
      player = new Player(false,buttonArray[index].getCat(),width/2+100,buttonArray[index].getpos().y,buttonArray[index].getWidth(),buttonArray[index].getHeight());
    }
  }
 /* if(startButton.isClicked()){
    System.out.println(index);
    gameState = "PLAY";
  }
  //Help Button
  if(helpButton.isClicked()){
    gameState = "HELP";
  }*/
}

void playGame(){
}
void winGame(){}
void loseGame(){}
void helpMenu(){}
void clear(){
  fill(255);
  rect(0,0,width,height);
}
