class Spongebob extends Animal {
 
  Spongebob (int animalX, int animalY, int animalSize) {
    super(animalX, animalY, animalSize);
  }

  void move() {
    if (ay > height - floorH && ay < tankH ) {
      ay += aspeedy;
    }
    if (ay <= height - floorH) {
      super.move();
    }
}  
   void display() {
     image(Spongebob, ax, ay, size, size);
  }
}
