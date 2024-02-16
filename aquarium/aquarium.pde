Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
PImage Animal; 
PImage Nemo;
PImage Spongebob; 
PImage Crab;
PImage Fish;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
  Animal = loadImage("fish.jpg");
  Nemo = loadImage("nemo.jpeg");
  Spongebob = loadImage ("spongebob.jpg");
  Crab = loadImage ("Crab.png");
  Fish = loadImage ("fish1.png");
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.movenemos();
  t.movespongebobs();
  t.movecrabs();
  t.movefishs();
  t.display();
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY);
}

void keyPressed() {
  if (keyCode == DOWN){
    t.addSpongebob (mouseX, mouseY);
  }
  if (keyCode == UP) {
    t.addNemo (mouseX, mouseY);
  }
  
  if (keyCode == LEFT) {
    t.addCrab (mouseX, mouseY);
  }
  
  if (keyCode == RIGHT ){
    t.addFish (mouseX, mouseY);
  }
}
