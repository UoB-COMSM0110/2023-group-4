
int numFrames = 6;
int curFrame = 0;
PImage[] imgs = new PImage[numFrames];
PGraphics gif;


void setup() {
  size(270, 170);
  gif = createGraphics(width, height);
  frameRate(24);

  for (int i=0; i<numFrames; i++) {
    imgs[i] = loadImage("Images/Nyan_Original/frame_" + i + ".gif");
  }

  loop();
}

void draw() {
  background(160, 0);
  gif.beginDraw();
  curFrame = (curFrame+1) % numFrames;  // Use % to cycle through frames
  int offset = 0;
  for (int x = 0; x < width; x += imgs[0].width) {
    image(imgs[(curFrame+offset) % numFrames], x, 0);
    offset+=2;
  }
  gif.endDraw();
  image(gif, 0, 0);
}

/*
void mousePressed() {
  gif.save("image_" + millis() + ".png");
}
*/
