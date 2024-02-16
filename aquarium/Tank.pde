class Tank {
  int tankX;
  int tankY;
  int tankW;
  int tankH;
  int floorH;
  ArrayList<Animal> animals;
  ArrayList<Spongebob> spongebobs;
  ArrayList<Nemo> nemos;
  ArrayList<Fish> fishs;
  ArrayList<Crab> crabs; 
  
  Tank(int tx, int ty, int tw, int th, int fh) {
    tankX = tx;
    tankY = ty;
    tankW = tw;
    tankH = th;
    floorH = fh;
    animals = new ArrayList<Animal>();
    spongebobs = new ArrayList<Spongebob>();
    nemos = new ArrayList<Nemo>();
    crabs = new ArrayList<Crab>();
    fishs = new ArrayList<Fish>();
  }
  

  void addAnimal(int mouseX, int mouseY) {
    if (mouseY > floorH && mouseY > tankY) {
      Animal newAnimal = new Animal(mouseX, mouseY, 30);
      animals.add(newAnimal);
    }
  }
  
  void addSpongebob (int mouseX, int mouseY){
    if (mouseY >= floorH && mouseY > tankY){
      Spongebob newSpongebob = new Spongebob (mouseX, mouseY, 20);
      spongebobs.add(newSpongebob);
    }
  }
  
  void addNemo (int mouseX, int mouseY){
    if (mouseY >= floorH && mouseY > tankY){
      Nemo newNemo = new Nemo (mouseX, mouseY, 20);
      nemos.add(newNemo);
    }
  }
  
  void addFish (int mouseX, int mouseY) {
    if (mouseY >= floorH && mouseY > tankY){
      Fish newFish = new Fish (mouseX, mouseY, 20);
      fishs.add(newFish);
    }
  }
  
  void addCrab (int mouseX, int mouseY) {
    if (mouseY >= floorH && mouseY > tankY){
      Crab newCrab = new Crab (mouseX, mouseY, 20);
      crabs.add(newCrab);
    }
  }
  void moveAnimals() {
    for (int i = 0; i < animals.size(); i++) {
      Animal animal = animals.get(i);
      animal.move();
  }
}

  void movespongebobs() {
    for (int i = 0; i < spongebobs.size(); i++){
      Spongebob spongebob = spongebobs.get(i);
      spongebob.move();
  }
}
  void movenemos(){
    for (int i = 0; i < nemos.size(); i++){
      Nemo nemo = nemos.get(i);
      nemo.move();
    }
  }
  
  void movefishs() {
    for (int i = 0; i < fishs.size(); i++){
      Fish fish = fishs.get(i);
      fish.move();
    }
  }
  
  void movecrabs() {
    for (int i = 0; i < crabs.size(); i++){
      Crab crab = crabs.get(i);
      crab.move();
    }
  }
  void display() {
    fill(0, 0, 255);
    rect(tankX, tankY, tankW, tankH);

    fill(#fff5be);
    rect(tankX, tankH, tankW, floorH);
    for (int i = 0; i < animals.size(); i++){
      Animal animal = animals.get(i);
      animal.display();
    }
    for (int i = 0; i < spongebobs.size(); i++){
      Spongebob spongebob = spongebobs.get(i);
      spongebob.display();
    } 
    
    for (int i = 0; i < nemos.size(); i++){
      Nemo nemo = nemos.get(i);
      nemo.display();
    } 
    
    for (int i = 0; i < fishs.size(); i++){
      Fish fish = fishs.get(i);
      fish.display();
    }
    
    for (int i = 0; i < crabs.size(); i++){
      Crab crab = crabs.get(i);
      crab.display();
    }
  }
}
