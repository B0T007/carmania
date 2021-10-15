class star {

  float xpos;
  float ypos;

  star(float tempXpos, float tempYpos) {

    xpos = tempXpos;
    ypos = tempYpos;
   
    star_image = loadImage("star.png");
    star_image.resize(40,40);

}

  void render() {
 
    imageMode(CENTER);
    image(star_image,xpos,ypos);

  }

void update() {

    if (frameCount%1000 == 0) {
      xpos = random(70, width);
      ypos = random(70, height);
    }
}




}
