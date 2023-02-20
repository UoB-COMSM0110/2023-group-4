/**
 * Objects
 * by hbarragan. 
 * 
 * Move the cursor across the image to change the speed and positions
 * of the geometry. The class MRect defines a group of lines.
 */

//MRect r1, r2, r3, r4;

int no_of_shapes=5;

MRect[] shapes = new MRect[no_of_shapes];
 
void setup()
{
  
  size(640, 360);
  //noStroke();
  //r1 = new MRect(1, 134.0, 0.532, 0.1*height, 10.0, 60.0);
  //r2 = new MRect(2, 44.0, 0.166, 0.3*height, 5.0, 50.0);
  //r3 = new MRect(2, 58.0, 0.332, 0.4*height, 10.0, 35.0);
  //r4 = new MRect(1, 120.0, 0.0498, 0.9*height, 15.0, 60.0);
 /* 
  for(int i=0; i<no_of_shapes; i++){
    float driver = 100*cos(i+1/60);
    shapes[i]=new MRect((int)random(1,2), driver, driver/300, random(1, 100), 10, 50);
  }
  */
}
 
void draw()
{
  background(0);
  
    shapes = new MRect[no_of_shapes];
  for(int i=0; i<no_of_shapes; i++){
        float driver = random(200*cos(i+1/100), 200);
    shapes[i]=new MRect((int) random(1, 3) , driver, driver/30, random(1, 10)*0.1*height, random(1, 20), random(30, 60));
    
    fill(random(100,255), random(100,255), random(100,255));
    shapes[i].display();    
    shapes[i].move(mouseX-(width/2), mouseY+(height*0.5), 40);
    


  }
/*
    fill(random(0,255), random(0,255), random(0,255));
  r3.display();
    fill(random(0,255), random(0,255), random(0,255));
  r4.display();
 
  r1.move(mouseX-(width/2), mouseY+(height*0.1), 30);
  r2.move((mouseX+(width*0.05))%width, mouseY+(height*0.025), 20);
  r3.move(mouseX/4, mouseY-(height*0.025), 40);
  r4.move(mouseX-(width/2), (height-mouseY), 50);
  */
}
 
class MRect 
{
  int w; // single bar width
  float xpos; // rect xposition
  float h; // rect height
  float ypos ; // rect yposition
  float d; // single bar distance
  float t; // number of bars
 
  MRect(int iw, float ixp, float ih, float iyp, float id, float it) {
    w = iw;
    xpos = ixp;
    h = ih;
    ypos = iyp;
    d = id;
    t = it;
  }
 
  void move (float posX, float posY, float damping) {
    float dif = ypos - posY;
    if (abs(dif) > 1) {
      ypos -= dif/damping;
    }
    dif = xpos - posX;
    if (abs(dif) > 1) {
      xpos -= dif/damping;
    }
  }
 
  void display() {
    for (int i=0; i<t; i++) {
      rect(xpos+(i*(d+w)), ypos, 10, height*h);
    }
  }
}
