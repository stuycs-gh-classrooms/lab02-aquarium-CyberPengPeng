class Spongebob extends Animal {
  Spongebob (int animalX, int animalY, int animalSize) {
    super(animalX, animalY, animalSize);
  }

  void move() {
    super.move();
    ax += aspeedx;

    if (ax < 0 || ax > tankW - size) {
      aspeedx *= -1;
    }
    
    if (ay < 50 || ay > tankH - size) {
    aspeedy *= -1;  
    ay += aspeedy;
    }
  }
  
   void display() {
     image(Spongebob, ax, ay, size, size);
  }
}
