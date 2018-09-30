PImage img = loadImage("endless-shapes.jpg");

void setup(){
  fullScreen();
  background(0);
  
  img.loadPixels();
  
  for (float i = 0; i < img.pixels.length; i++){
      img.pixels[(int)i] = color((i%img.width/width)*255,(i/img.pixels.length)*255,255);
  }
  img.updatePixels();
  image(img, 0, 0);
  img.save("background-img.jpg");
}

void draw(){
}
