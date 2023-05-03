class Button{
  PVector pos = new PVector(0,0);
  //Size
  float Width = 0;
  float Height = 0;
  //Colour
  color Colour;
  color TextColor;
  String text;
  Boolean Pressed = false;
  Boolean Clicked = false;
  PImage Image;
  
  float Radius = 0;

  //image variables
  int currentFrame;
  int frameSequence;
  PImage[] anim;
  //The file path for characters: Image/catOne  Image/catTwo
  String filePath;

  int timeGap = 500;
  //Constructor 
  Button(int posX,int posY,int wid,int hei, String text,int red,int green,int blue,String spritePath,PImage img,PImage[] animation, int tRed,int tGreen,int tBlue){
    pos.x = posX;
    pos.y = posY;
    this.Width = wid;
    this.Height = hei;
    this.text = text;
    this.Radius = 4;
    this.Colour = color(red,green,blue);
    this.TextColor = color(tRed,tGreen,tBlue);
    this.Image = img;
    anim = new PImage[4];
    if(animation!=null){
      for(int i = 0;i<4;i++){
        anim[i] = animation[i];
      }
    }
    currentFrame = 0;
    frameSequence = 4;
    
    filePath = spritePath;
  }
  void update(){//Update the status of the button
    //The mouse is pressed
    if(mousePressed == true && mouseButton == LEFT&&Pressed == false){
      Pressed = true;
      //The button is clicked
      if(mouseX>=pos.x && mouseX <= pos.x+Width && mouseY >= pos.y && mouseY<=pos.y+Height){
        Clicked = true;
      }
    }else{
      Pressed = false;
      Clicked = false;
    }
  }
  void renderButton(){
    noStroke();
    if(Image!= null){
      //Image: Icon
      image(Image,pos.x,pos.y,Width,Height);
    }else if(anim[0]!=null){
      //Animation
      image(anim[currentFrame+0],pos.x,pos.y,Width,Height);
      if(millis() % timeGap <= (2000/frameRate)){
      currentFrame = (currentFrame+1)%frameSequence;
      }
    }
    else{
      //Text
      textSize(15);
      fill(Colour);
      rect(pos.x,pos.y,Width,Height,Radius);
      fill(TextColor);
      textAlign(CENTER,CENTER);
      text(text,pos.x+(Width/2),pos.y+(Height/2));
  }
  }
  boolean isClicked(){
    return Clicked;
  }
  PImage getCat(){
    return this.Image;
  }
  float getWidth(){
    return Width;
  }
  float getHeight(){
    return Height;
  }
  PVector getpos(){
    return pos;
  }
  String getFilePath(){
    return filePath;
  }
}
