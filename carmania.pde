Cloud minCloud1;

Fuel Fuel1;

MinCar minCar1;

Hp[] hps = new Hp[5];

star star1;

Dash dash1;

int timer;


Car[] Cars = new Car[25];

int state;
PImage star_image;
PImage hp_image;
PImage jerry_image;
PImage maln_image;
PImage explosion_image;
PImage minCar_image;


void setup() {
  background(0);
  size(1200, 1000, P2D);

  minCloud1 = new Cloud(color(255, 255, 255), random(0, width), random(0, height));

  minCar1 = new MinCar(color(255, 150, 150), 1200, 200, 0, 0);

  Fuel1 = new Fuel(color(255, 0, 0), 123, 354);

  explosion_image = loadImage("explosion.png");

  star1 = new star(random(10,width),random(10,height));

  dash1 = new Dash(25,70);

  for (int i = 0; i < Cars.length; i++) {
    Cars[i] = new Car(random(0, width), random(0, height), random(1, 4));
  }









  state = 1;
}


void draw() {

  if (state == 1) {
    background(0, 255, 255);

    for (int i = 0; i < Cars.length; i++) {
      Cars[i].update();
      Cars[i].render();
    }

    for (int i = 0; i < hps.length; i++) {
    }

   star1.render();
   star1.update();

    minCar1.update();
    minCar1.render();

    Fuel1.update();
    Fuel1.render();

    minCloud1.update();
    minCloud1.render();

    dash1.render();

    // State 2 : explosion
  } else if (state == 2) {
    background(0, 255, 255);

    minCar1.explode();

    minCloud1.update();
    minCloud1.render();

    if (millis() - timer > 2000) {
      state = 1;
    }
  }
}

void keyPressed() {
  if (key == 'w') {
    minCar1.yspeed = minCar1.yspeed - 1;
  }
  if (key == 's') {
    minCar1.yspeed = minCar1.yspeed + 1;
  }
  if (key == 'a') {
    minCar1.xspeed = minCar1.xspeed - 1;
  }
  if (key == 'd') {
    minCar1.xspeed = minCar1.xspeed + 1;
  }

  if (key == 'e') {
    state = 2;
    timer = millis();
  }
}
