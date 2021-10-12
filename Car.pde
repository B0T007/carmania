class Car {

  color c;
  float xpos;
  float ypos;
  float xspeed;



  Car(float tempXpos, float tempYpos, float tempXspeed) {
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    
    c = color(random(0,255), random(0,255),random(0,255));
  }

  void render() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);
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
