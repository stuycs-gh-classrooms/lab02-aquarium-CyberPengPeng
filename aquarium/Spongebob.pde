class Spongebob extends Animal {
  int maxH; 
  
  Spongebob (int animalX, int animalY, int animalSize) {
    super(animalX, animalY, animalSize);
  }

  void move() {
    maxH = int(random(floorH, height - size));
    if (ay <=  maxH) {
      super.move();
   }
    else if  (ay ==  maxH ) {
      ay += aspeedy;
      ay = constrain(0, ay, maxH);
      if (ay == height - floorH){
        super.move();
      }
   }
}  
   void display() {
     Animal = Spongebob;
     super.display();
  }
}
