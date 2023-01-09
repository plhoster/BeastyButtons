import beastybuttons.*;

BeastyWorld world;


void setup(){
  size(700, 700);
  world = new BeastyWorld(this);
  world.setBackgroundColor(color(255, 255, 100));
}

void draw(){
  if(mousePressed)
    world.addWidget(new Button(this, "button", random(5, 50)).setPosition(random(0, width), random(0, height)));
}
