class Button{
  PVector pos = new PVector(0,0);
  //Size
  float Width = 0;
  float Height = 0;
  //Colour
  color Colour;
  String text;
  Boolean Pressed = false;
  Boolean Clicked = false;
  PImage Image;

  //image variables
  int currentFrame;
  boolean facingRight;
  int frameSequence;
  PImage[] anim;
  //The file path for characters: Image/catOne  Image/catTwo
  String filePath;

  int timeGap = 500;
  //Constructor 
  Button(int posX,int posY,int wid,int hei, String text,int red,int green,int blue,String spritePath,PImage img,PImage[] animation){
    pos.x = posX;
    pos.y = posY;
    this.Width = wid;
    this.Height = hei;
    this.text = text;
    this.Colour = color(red,green,blue);
    this.Image = img;
    anim = new PImage[4];
    if(animation!=null){
      for(int i = 0;i<4;i++){
        anim[i] = animation[i];
      }
    }
    currentFrame = 0;
    facingRight = true;
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
      fill(Colour);
      rect(pos.x,pos.y,Width,Height);
      fill(0);
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
