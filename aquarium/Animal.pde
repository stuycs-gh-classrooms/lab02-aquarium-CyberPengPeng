class Animal {
  int ax;
  int ay;
  int size;
  int aspeedy;
  int aspeedx;
  boolean death; 
  
  Animal(int animalX, int animalY, int animalSize) {
    ax = animalX;
    ay = animalY;
    size = animalSize;
    
    aspeedx = int(random(1, 3));
    aspeedy = int(random(1, 3));

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
}


  void display() {
    image(Animal, ax, ay, size, size);
  }
}
