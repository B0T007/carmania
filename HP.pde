class Hp {

  float x = 25;
  float hp;
  float xpos;
  float ypos;

  Hp(float tempXpos, float tempYpos) {

    xpos = tempXpos;
    ypos = tempYpos;

    hp_image = loadImage("Hp.png");
    hp_image.resize(50, 50);
    hp = 5;
}


  void render() {

    imageMode(CENTER);
    image(hp_image, xpos, ypos);


}


}
