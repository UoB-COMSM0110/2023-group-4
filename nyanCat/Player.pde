class Player{
  Boolean winLose;
  PImage cat;
  PVector pos = new PVector(0,0);
  float Width;
  float Height;
  Player(Boolean winLose, PImage img, float posX,float posY,float wid,float hei){
    this.winLose = winLose;
    this.cat = img;
    this.pos = new PVector(posX,posY);
    this.Width = wid;
    this.Height = hei;
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
  void renderPlayer(){
    image(cat,pos.x,pos.y,Width,Height);
  }
}
