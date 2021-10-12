class MinCar {

  boolean onStar;
  float points;
  float hp;
  float fuel;

  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float maxspeed;

  MinCar(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    yspeed = tempYspeed;
    maxspeed = 4;
    fuel = 500;
    hp = 5;
    points = 0;
  }

  void render() {

    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);

    text(fuel, 50, 50);
  }

  void update() {

    // keep speed under maxspeed
    if (xspeed > maxspeed) {
      xspeed = maxspeed;
    }
    if (xspeed < (-1) * maxspeed) {
      xspeed = (-1) * maxspeed;
    }
    if (yspeed > maxspeed) {
      yspeed = maxspeed;
    }
    if (yspeed < (-1) * maxspeed) {
      yspeed = (-1) * maxspeed;
    }

    // Check for borders
    if (xpos > width) {
      xpos = width;
    }
    if (xpos < 0) {
      xpos = 0;
    }
    if (ypos < 0) {
      ypos = 0;
    }
    if (ypos > height) {
      ypos = height;
    }

    // update position
    if (fuel > 0) {
      xpos = xpos + xspeed;
      ypos = ypos + yspeed;

      // fuel consumtion
      fuel = fuel - sqrt(sq(xspeed)+sq(yspeed))*0.05;
    }



    collisionCheck();
  }


  void explode() {
    image(explosion_image, xpos, ypos);
  }


  void collisionCheck() {

    for (int i = 0; i < Cars.length; i++) {

      if (abs(Cars[i].xpos - xpos) < 20 && abs(Cars[i].ypos - ypos) < 20) {
        explode();
      }
    }

    if (abs(Fuel1.xpos - xpos) < 60 && abs(Fuel1.ypos - ypos) < 60) {

      Fuel1.xpos = random(70, width);
      Fuel1.ypos = random(70, height);

      fuel += 60;
    }

    if (abs(star1.xpos - xpos) < 70 && abs(star1.ypos - ypos) < 70 && !onStar) {
      onStar = true;
      //fixa så man får poäng för varje gång man kör in i star
      points += 1 ;
    } else if (abs(star1.xpos - xpos) >= 70 || abs(star1.ypos - ypos) >= 70) {
      onStar = false;
    }
  }
}
