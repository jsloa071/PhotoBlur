
PImage img;
int pointillize = 3;

void setup(){
  size(500,500);
  frameRate(40000);
  img = loadImage("flower.jpeg");
  background(0);
  smooth();
}

void draw(){
  
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;
  
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  fill(r,g,b,100);
  ellipse(x,y,pointillize, pointillize);
  
  image(img,0,height/2);
}