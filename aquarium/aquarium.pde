Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
PImage Animal; 
PImage Nemo;
PImage Spongebob; 

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
  Animal = loadImage("fish.jpg");
  Nemo = loadImage("nemo.jpeg");
  Spongebob = loadImage ("spongebob.jpg");
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.movenemos();
  t.movespongebobs();
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
}
