class Dash {

  color c;
  float xpos;
  float ypos;
  int hp;
  float points;

  Dash(float tempXpos, float tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
    hp = 5;

    hp_image = loadImage("Hp.png");
    hp_image.resize(50, 50);
  }

  void render() {

    rect(120, 120, 220, 220, 28);
    // Background for dashboard
    textSize(50);
    fill(0, 25, 100);
    text("fuel", 20, 80);
    //  text(minCar1.points, 80, 120);

    textSize(20);
    fill(0, 25, 100);
    text(minCar1.fuel, 120, 70);

    textSize(50);
    fill(255, 0, 0);
    text(minCar1.points, 175, 150);

    textSize(50);
    fill(255, 0, 0);
    text("points", 20, 150);

    //ritar ut hpn
    for (int i = 0; i < hp; i++) {
      imageMode(CENTER);
      image(hp_image, 500 + 55 * i, 25);
    }
  }
}
