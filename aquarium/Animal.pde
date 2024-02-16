class Animal {
  int ax;
  int ay;
  int size;
  int aspeedy;
  int aspeedx;
  int aliveFrames;
  int maxFramesAlive;

  Animal(int animalX, int animalY, int animalSize) {
    ax = animalX;
    ay = animalY;
    size = animalSize;
    maxFramesAlive = int(random(50, 250));
    aspeedx = int(random(1, 3));
    aspeedy = int(random(1, 3));
    aliveFrames = 0;
  }
  

void move() {
  ax += aspeedx;
  ay += aspeedy;

  if (ax < 0 || ax > tankW - size) {
    aspeedx *= -1;
  }

  if (ay < 50 || ay > tankH - size) {
    aspeedy *= -1;  
    ay += aspeedy;
  }
  
  aliveFrames++;
}
  void display() {
    if (maxFramesAlive > aliveFrames) {
        image(Animal, ax, ay, size, size);
      }
    else {      
      }
  }
}
