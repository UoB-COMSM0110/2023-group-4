/**
 * Multiple constructors
 * 
 * A class can have multiple constructors that assign the fields in different ways. 
 * Sometimes it's beneficial to specify every aspect of an object's data by assigning 
 * parameters to the fields, but other times it might be appropriate to define only 
 * one or a few.
 */

Spot sp1, sp2;
int rad=120;
int increment=20;
float x_new=(width*0.5)+rad-(increment/2);

void setup() {
  size(640, 360);
  
  //noLoop();
  // Run the constructor without parameters
  sp1 = new Spot(x_new);
  // Run the constructor with three parameters
  sp2 = new Spot(width*0.5, height*0.5, rad);
}

void draw() {
  background(204);
  fill(0, 100, 0);
  sp1.display();
  sp2.display();
}

void mousePressed(){
    rad=rad+increment;
    x_new=x_new-increment;
    sp1 = new Spot(x_new);
    sp2 = new Spot(width*0.5, height*0.5, rad); 
}
    

class Spot {
  float x, y, radius;

  // First version of the Spot constructor;
  // the fields are assigned default values
  Spot(float x_new) {
    radius = 40;
    x = x_new;
    y = height*0.5;
  }
  
  
  
  
  // Second version of the Spot constructor;
  // the fields are assigned with parameters
  Spot(float xpos, float ypos, float r) {
    x = xpos;
    y = ypos;
    radius = r;
  }
  void display() {
    ellipse(x, y, radius*2, radius*2);
  }
  
}
