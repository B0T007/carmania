class Fuel {

  //kom i håg constructorn i CARS

  color c;
  float xpos;
  float ypos;

  Fuel(color tempC, float tempXpos, float tempYpos) {

    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;

    c = color(255, 0, 0);
   
    jerry_image = loadImage("jerry.png");
     jerry_image.resize(100,100); 

 }

  void render() {
  
    imageMode(CENTER);
    image(jerry_image, xpos, ypos);
}

  void update() {

    if (frameCount%360 == 0) {
      xpos = random(70, width);
      ypos = random(70, height);
    }
}


}
