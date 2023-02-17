class Button{
  PVector pos = new PVector(0,0);
  float Width = 0;
  float Height = 0;
  color Colour;
  String text;
  Boolean Pressed = false;
  Boolean Clicked = false;
  PImage Image;
  //Constructor 
  Button(int posX,int posY,int wid,int hei, String text,int red,int green,int blue,PImage img){
    pos.x = posX;
    pos.y = posY;
    this.Width = wid;
    this.Height = hei;
    this.text = text;
    this.Colour = color(red,green,blue);
    this.Image = img;
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
      image(Image,pos.x,pos.y,Width,Height);
    }else{
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
}
