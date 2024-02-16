class Nemo extends Animal {
  Nemo(int animalX, int animalY, int animalSize) {
    super(animalX, animalY, animalSize);
  }

  void move() {
     super.move();
     ay += aspeedy;
     if (ay < 50 || ay > tankH - size) {
       aspeedy *= -1;
     }
  }
  
  void display() {
    Animal = Nemo;
    super.display();
   }
}
