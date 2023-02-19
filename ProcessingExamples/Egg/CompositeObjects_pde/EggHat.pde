class EggHat{
  float x, y, sc;//coordinates 
  int scale;
  boolean on;
  
  void start(float xpos, float ypos){
    x=xpos;
    y=ypos;
    sc=20;
    on = true;
  }
  
  
  void display(){
    if(on==true){
      fill(255, 255, 255);
      rect(x, x, y, y);
    }
  }
  
}
