float xoff = 0.01;
float xincrement = 0.01;

void setup() {
  size(1280, 720);
  background(0);
}
void draw() {
  
  //create multicoloured rectangle
  colorMode(HSB, 360, 100, 100);                                         
  noStroke();
  for (int i = 0; i <10; i++)   
  {
    fill(i*30, 100, 100);
    rect(mouseX, (i*5)+mouseY,13, 5);
  }

  // create noise blurr
  fill(0, 10);
  rect(0,0,width,height);

}
