class Car {

  color c;
  float xpos;
  float ypos;
  float xspeed;



  Car(float tempXpos, float tempYpos, float tempXspeed) {
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;

    c = color(random(0, 255), random(0, 255), random(0, 255));

    minCar_image = loadImage("minCar.png");
  }

  void render() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    image(minCar_image, xpos, ypos);
    minCar_image.resize(40,20);
  }

  void update() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }

  void explode() {
    textSize(40);
    fill(0, 255, 255);
    text("hööörs", xpos, ypos);
  }
}
